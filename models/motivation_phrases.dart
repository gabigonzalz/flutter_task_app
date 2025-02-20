import 'dart:math';

class MotivationPhrases {
  final List<String> phrases = [
    '¡Tú puedes lograrlo!',
    'No te rindas, sigue adelante.',
    'Cada paso cuenta.',
    'El éxito es la suma de pequeños esfuerzos.',
    'Hazlo con pasión o no lo hagas.',
    'Metele garra',
    'El único límite eres tú mismo.',
    'Cree en ti, todo es posible.',
    'Hoy es un nuevo comienzo.',
    'La persistencia vence a la resistencia.',
    'Tu actitud determina tu dirección.',
    'Los sueños no tienen fecha de caducidad.',
    'El momento es ahora.',
    'Convierte tus miedos en fortalezas.',
    'Cada día es una nueva oportunidad.',
    'La disciplina vence al talento.',
    'El éxito se construye día a día.',
    'Tu futuro depende de lo que hagas hoy.',
    'Las excusas no te llevarán lejos.',
    'Enfócate en el proceso, no en el resultado.',
    'Persigue tus sueños hasta alcanzarlos.',
    'La constancia es la clave del éxito.',
    'No hay atajos para el éxito verdadero.',
    'Visualiza tus metas y hazlas realidad.',
    'El fracaso es parte del aprendizaje.',
    'Confía en el proceso.',
  ];

  String getRandomPhrase() {
    return phrases[Random().nextInt(phrases.length)];
  }
}
