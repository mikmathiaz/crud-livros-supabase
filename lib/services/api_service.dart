import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/item.dart';

class ApiService {
  static final supabase = Supabase.instance.client;

  static Future<List<Item>> getItems() async {
    try {
      final response = await supabase.from('items').select();

      print('Resposta Supabase: $response');

      return (response as List).map((item) => Item.fromJson(item)).toList();
    } catch (e, stacktrace) {
      print('Erro no getItems: $e');
      print('Stacktrace: $stacktrace');
      throw Exception('Erro ao buscar itens: $e');
    }
  }

  static Future<Item> addItem(Item item) async {
    final response =
        await supabase.from('items').insert(item.toJson()).select().single();
    return Item.fromJson(response);
  }

  static Future<void> updateItem(Item item) async {
    try {
      await supabase.from('items').update(item.toJson()).eq('id', item.id!);
    } catch (e) {
      print('Erro no updateItem: $e');
      throw Exception('Erro ao atualizar item: $e');
    }
  }

  static Future<void> deleteItem(int id) async {
    await supabase.from('items').delete().eq('id', id);
  }
}
