Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB676D350A
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Apr 2023 02:05:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD6938209D;
	Sun,  2 Apr 2023 00:05:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD6938209D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Yqjvk7i8XyT; Sun,  2 Apr 2023 00:05:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 935C88206F;
	Sun,  2 Apr 2023 00:05:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 935C88206F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96B321BF3A7
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 00:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7068E82070
 for <devel@linuxdriverproject.org>; Sun,  2 Apr 2023 00:05:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7068E82070
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6wrEfwFd1Eiy for <devel@linuxdriverproject.org>;
 Sun,  2 Apr 2023 00:05:29 +0000 (UTC)
X-Greylist: delayed 00:35:58 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1481A8206F
Received: from smtp1.fnusa.cz (smtp1.fnusa.cz [IPv6:2001:718:806:2::a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1481A8206F
 for <devel@driverdev.osuosl.org>; Sun,  2 Apr 2023 00:05:28 +0000 (UTC)
Received: from smtp1.fnusa.cz (mailfilter.fnusa.cz [172.30.0.204])
 by smtp1.fnusa.cz (Postfix) with ESMTP id 2362C1212B0;
 Sun,  2 Apr 2023 00:59:28 +0200 (CEST)
Received: from zimbros.fnusa.cz (zimbros.fnusa.cz [172.30.0.176])
 by smtp1.fnusa.cz (Postfix) with ESMTP id ABB12121282;
 Sun,  2 Apr 2023 00:58:05 +0200 (CEST)
Date: Sun, 2 Apr 2023 00:58:05 +0200 (CEST)
From: MK <andrea.vachova@fnusa.cz>
Message-ID: <1396601580.34333198.1680389885502.JavaMail.zimbra@fnusa.cz>
Subject: Hallo Sonnenschein, wie geht es dir?
MIME-Version: 1.0
X-Originating-IP: [2001:9b1:8826:0:98:128:186:102]
X-Mailer: Zimbra 8.6.0_GA_1182 (zclient/8.6.0_GA_1182)
Thread-Topic: Hallo Sonnenschein, wie geht es dir?
Thread-Index: 4ZOvVlnWBEeOEal0SQBKFg+/L0ja/Q==
X-AV-Checked: ClamAV using ClamSMTP
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fnusa.cz; s=mail; 
 t=1680389971; bh=IU4mCxmrdujbtHuvc2BpTiNEjSoggtVt7iwDndb7l/k=;
 h=Date:From:Reply-To:Subject:From;
 b=nnGm4DuFMLDALBJd32eHbB66vXK7HDE+/ih67w9YhLHCGXwox+YwW4FqBI1fEtcMv
 40vHrxpm+brexKJzgZRicVCwhaWSCqXvR0vsLTr86fa0qldk95vKpluH2C9O7QUoMj
 m9x2hh03QF9/McXMp8j3sWIuyh4eUOC31iHJlGCo=
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fnusa.cz; s=mail; 
 t=1680389908; bh=IU4mCxmrdujbtHuvc2BpTiNEjSoggtVt7iwDndb7l/k=;
 h=Date:From:Reply-To:Subject:From;
 b=0KU61AaveKJMyK4FujawCWtB1Jv78HCSiDT0voeGKkqYc/jkgEEZU/2iiMY0835HW
 LPv2bzup2B0Nv39CwBoSEW/QnBNJirvNPGLmRZFE7fq7uILrd2ZgUO10s88ahUaW4X
 yh0kBNi06+9H8VKMBIy0FZQRyw5ONcXaff9Ol3fk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=fnusa.cz header.i=@fnusa.cz
 header.a=rsa-sha256 header.s=mail header.b=nnGm4DuF; 
 dkim=pass (1024-bit key) header.d=fnusa.cz header.i=@fnusa.cz
 header.a=rsa-sha256 header.s=mail header.b=0KU61Aav
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
Reply-To: MK <MK008@bahnhof.se>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RXMgdHV0IG1pciBsZWlkLCBTaWUgenUgc3TDtnJlbiB1bmQgaW4gSWhyZSBQcml2YXRzcGjDpHJl
IGVpbnp1ZHJpbmdlbi4gSWNoIGJpbiBsZWRpZywKICBlaW5zYW0gdW5kIGF1ZiBkZXIgU3VjaGUg
bmFjaCBlaW5lbSBmw7xyc29yZ2xpY2hlbiwgbGllYmV2b2xsZW4gdW5kIHJvbWFudGlzY2hlbiBC
ZWdsZWl0ZXIuCgpJY2ggYmluIGVpbiBoZWltbGljaGVyIFZlcmVocmVyIHVuZCB3w7xyZGUgZ2Vy
bmUgZGllIEdlbGVnZW5oZWl0IGRhenUgbnV0emVuCm1laHIgdm9uZWluYW5kZXIgZXJmYWhyZW4u
IEljaCB3ZWnDnywgZXMgaXN0IHNlbHRzYW0sIFNpZSB6dSBrb250YWt0aWVyZW4KYXVmIGRpZXNl
IFdlaXNlIHVuZCBpY2ggaG9mZmUsIFNpZSBrw7ZubmVuIG1pciB2ZXJ6ZWloZW4uIEljaCBiaW4g
ZWluIHNjaMO8Y2h0ZXJuZXIgTWVuc2NoIHUKRGFzIGlzdCBkZXIgZWluemlnZSBXZWcsIHdpZSBp
Y2ggd2Vpw58sIGRhc3MgaWNoIElocmUgQXVmbWVya3NhbWtlaXQgZXJyZWdlbiBrw7ZubnRlLiBJ
Y2ggd2lsbCBudXIKenUgd2lzc2VuLCB3YXMgU2llIGRlbmtlbiwgdW5kIG1laW5lIEFic2ljaHQg
aXN0IGVzIG5pY2h0LCBTaWUgenUgYmVsZWlkaWdlbi4KSWNoIGhvZmZlLCB3aXIga8O2bm5lbiBG
cmV1bmRlIHNlaW4sIHdlbm4gZXMgZGFzIGlzdCwgd2FzIFNpZSB3b2xsZW4sIG9id29obCBpY2gg
ZXMgd8O8bnNjaGUKbWVociBhbHMgbnVyIGVpbiBGcmV1bmQgenUgc2Vpbi4gSWNoIHdlacOfLCBk
YXNzIFNpZSBlaW4gcGFhciBGcmFnZW4gaGFiZW4KRnJhZ2VuIFNpZSB1bmQgaWNoIGhvZmZlLCBp
Y2gga2FubiBlaW5pZ2UgSWhyZXIgTmV1Z2llciBtaXQgZWluIHBhYXIgYmVmcmllZGlnZW4KQW50
d29ydGVuLgoKSWNoIGdsYXViZSBhbiBkYXMgU3ByaWNod29ydDog4oCeRsO8ciBkaWUgV2VsdCBi
aXN0IGR1IG51ciBlaW5lIFBlcnNvbiwKYWJlciBmw7xyIGplbWFuZCBCZXNvbmRlcmVuIGJpc3Qg
ZHUgZGllIFdlbHQuIEFsbGVzIHdhcyBpY2ggd2lsbCBpc3QgTGllYmUsCnJvbWFudGlzY2hlIEbD
vHJzb3JnZSB1bmQgQXVmbWVya3NhbWtlaXQgdm9uIGVpbmVtIGJlc29uZGVyZW4gQmVnbGVpdGVy
LCBkZXIgaWNoIGJpbgpob2ZmZW5kIHfDpHJzdCBkdS4KCkljaCBob2ZmZSwgZGFzcyBkaWVzZSBC
b3RzY2hhZnQgZGVyIEJlZ2lubiBlaW5lciBsYW5nZW4gRnJpc3Qgc2VpbiB3aXJkCktvbW11bmlr
YXRpb24gendpc2NoZW4gdW5zLCBzZW5kZW4gU2llIGVpbmZhY2ggZWluZSBBbnR3b3J0IGF1ZiBk
aWVzZSBOYWNocmljaHQsIGl0CndpcmQgbWljaCBnbMO8Y2tsaWNoIG1hY2hlbi4KCgpVbWFybXVu
Z2VuIHVuZCBLw7xzc2UsCgpIZWltbGljaGVyIFZlcmVocmVyLgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
