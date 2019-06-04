Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9B7350DC
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 22:29:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 680EF85C08;
	Tue,  4 Jun 2019 20:29:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1sUsAkEhRhx; Tue,  4 Jun 2019 20:29:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EAF4D859C1;
	Tue,  4 Jun 2019 20:29:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7B241BF3EC
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2019 20:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A49C087B81
 for <devel@linuxdriverproject.org>; Tue,  4 Jun 2019 20:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Non-encoded 8-bit data (char C3 hex):
 X-Spam-Score: ...o@arapongas.pr.gov.br Est\303\241 em uma lista [...]
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 94KO403aoE9X for <devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 20:29:31 +0000 (UTC)
X-Greylist: delayed 09:12:20 by SQLgrey-1.7.6
Received: from anubranco.arapongas.pr.gov.br (passaro.arapongas.pr.gov.br
 [201.35.17.200])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 99E2F87B36
 for <devel@driverdev.osuosl.org>; Tue,  4 Jun 2019 20:29:30 +0000 (UTC)
Received: from mandarim.arapongas.pr.gov.br (mandarim.arapongas.pr.gov.br
 [192.168.7.34])
 by anubranco.arapongas.pr.gov.br (8.14.3/8.14.3/Debian-9.4) with ESMTP id
 x54B8k6S025737; Tue, 4 Jun 2019 08:13:36 -0300
Received: from mandarim.arapongas.pr.gov.br (localhost [127.0.0.1])
 by mandarim.arapongas.pr.gov.br (Postfix) with ESMTP id 3B8A414807DA;
 Tue,  4 Jun 2019 07:46:35 -0300 (BRT)
Received: from mandarim.arapongas.pr.gov.br (mandarim.arapongas.pr.gov.br
 [192.168.7.34])
 by mandarim.arapongas.pr.gov.br (Postfix) with ESMTP id 5AAA61480438;
 Tue,  4 Jun 2019 07:46:34 -0300 (BRT)
Date: Tue, 4 Jun 2019 07:46:34 -0300 (BRT)
From: Prefeitura Municipal de Arapongas - =?utf-8?Q?Divis=C3=A3o?= de Editais
 <licitacao.pregao@arapongas.pr.gov.br>
Message-ID: <309648634.2310209.1559645194287.JavaMail.root@arapongas.pr.gov.br>
Subject: 
MIME-Version: 1.0
X-Originating-IP: [173.234.41.130]
X-Mailer: Zimbra 8.0.2_GA_5569 (zclient/8.0.2_GA_5569)
Thread-Topic: 
Thread-Index: 80yZo7uca8Ym6O9QARe8JvSzOhAq+Q==
X-CanIt-Incident-Id: 010kzdzqp
X-CanIt-Geo: No geolocation information available for 192.168.7.34
X-CanItPRO-Stream: saida (inherits from default)
X-Canit-Stats-ID: 010kzdzqp - ef509edeff45 - 20190604
X-Scanned-By: CanIt (www . roaringpenguin . com) on 192.168.7.17
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: mikeweirsky3211@zoho.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



Ich bin Michael J. Weirsky B&uuml;rger von New Jersey America. Ich m&ouml;chte Gott aufrichtig daf&uuml;r danken, dass er mir geholfen hat, gro&szlig; zu gewinnen. Ich m&ouml;chte meine guten Nachrichten mit Ihnen und Ihrer Familie teilen. Ich habe 273 Millionen Dollar Mega Millions Jackpot gewonnen. 7. M&auml;rz 2019. Wir geben Ihnen und Ihrer Familie 50 Millionen US-Dollar f&uuml;r mich und Ihre Kinder. Ich m&ouml;chte, dass Sie die Waisenh&auml;user f&uuml;r gemeinn&uuml;tzige Zwecke erreichen, weil ich wei&szlig;, wie schwer es ist, t&auml;glich Brot zu backen. Beitrag zur Armutsbek&auml;mpfung und Gew&auml;hrleistung einer angemessenen Gesundheitsversorgung f&uuml;r den Einzelnen. Ich m&ouml;chte auch, dass Sie einen Teil dieser Spende in die &ouml;ffentliche Infrastruktur investieren, um Arbeitslosen in Ihrem Land Arbeitspl&auml;tze zu bieten. Ich habe dich gew&auml;hlt, weil ich an dich glaube. Ich ben&ouml;tige Ihre volle Mitarbeit in Bezug auf diese Spende. Dies ist 
 kein Witz und ich brauche dich, um deine 100% Aufrichtigkeit zu geben.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
