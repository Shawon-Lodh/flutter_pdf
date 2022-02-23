import 'dart:async';
import 'dart:typed_data';

import 'package:flutter_pdf/examples/personal_resume.dart';
import 'package:pdf/pdf.dart';

import 'data.dart';
import 'examples/calendar.dart';
import 'examples/certificate.dart';
import 'examples/document.dart';
import 'examples/invoice.dart';
import 'examples/report.dart';
import 'examples/resume.dart';

const examples = <Example>[
  Example('RÉSUMÉ', 'resume.dart', generateResume),
  Example('DOCUMENT', 'document.dart', generateDocument),
  Example('INVOICE', 'invoice.dart', generateInvoice),
  Example('REPORT', 'report.dart', generateReport),
  Example('CALENDAR', 'calendar.dart', generateCalendar),
  Example('CERTIFICATE', 'certificate.dart', generateCertificate, true),
  Example('Personal', 'personal_resume.dart', personalResume),
];

typedef LayoutCallbackWithData = Future<Uint8List> Function(
    PdfPageFormat pageFormat, CustomData data);

class Example {
  const Example(this.name, this.file, this.builder, [this.needsData = false]);

  final String name;

  final String file;

  final LayoutCallbackWithData builder;

  final bool needsData;
}
