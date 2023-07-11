void main() {
  Solution solution = Solution();

  print(solution.isValid("(){}["));
}

class Solution {
  static const closers = [')', '}', ']'];

  bool isValid(String s) {
    var a = s.split('');
    var b = ['()', '{}', '[]'];
    if (a.length % 2 == 1 || a.isEmpty) return false;
    if (b.contains(s)) return true;
    for (int i = 0; i < s.codeUnits.length - 1; i++) {
      if (a.length - 1 == i && !closers.contains(a[i])) return false;
      if (closers.contains(a[i])) {
        if (i == 0) return false;
        if (a[i].codeUnitAt(0) ~/ 10 == a[i - 1].codeUnitAt(0) ~/ 10) {
          a.removeAt(i - 1);
          a.removeAt(i - 1);
          --i;
          --i;
          if (a.isEmpty) return true;
          continue;
        }
        return false;
      }
    }
    return false;
  }
}
