import './symbols.dart';

/// Raw string representing compound characters or combining marks in Regex.
///
/// [Source](https://github.com/panzerdp/voca/blob/master/src/helper/reg_exp).
const String COMBINING_MARKS = '([' +
    BASE_CHAR +
    ']|[' +
    HIGH_SURROGATE +
    '][' +
    LOW_SURROGATE +
    ']|[' +
    HIGH_SURROGATE +
    '](?![' +
    LOW_SURROGATE +
    '])|(?:[^' +
    HIGH_SURROGATE +
    ']|^)[' +
    LOW_SURROGATE +
    '])([' +
    DIACRITICAL_MARK +
    ']+)';

/// Raw string representing surrogate pairs in Regex.
///
/// [Source](https://github.com/panzerdp/voca/blob/master/src/helper/reg_exp).
const String SURROGATE_PAIRS =
    '([' + HIGH_SURROGATE + '])([' + LOW_SURROGATE + '])';

/// Raw string representing a single unicode character in Regex.
///
/// [Source](https://github.com/panzerdp/voca/blob/master/src/helper/reg_exp).
const String UNICODE_CHARACTER = '((?:[' +
    BASE_CHAR +
    ']|[' +
    HIGH_SURROGATE +
    '][' +
    LOW_SURROGATE +
    ']|[' +
    HIGH_SURROGATE +
    '](?![' +
    LOW_SURROGATE +
    '])|(?:[^' +
    HIGH_SURROGATE +
    ']|^)[' +
    LOW_SURROGATE +
    '])(?:[' +
    DIACRITICAL_MARK +
    ']+))|([' +
    HIGH_SURROGATE +
    '][' +
    LOW_SURROGATE +
    '])|([' +
    WHITESPACE +
    '])|(.)';
