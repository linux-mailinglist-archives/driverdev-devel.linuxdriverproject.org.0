Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFED3266C6
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 19:15:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 079C84F07F;
	Fri, 26 Feb 2021 18:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wqUdIia2WnQ6; Fri, 26 Feb 2021 18:15:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5E1054F06C;
	Fri, 26 Feb 2021 18:15:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7AD41BF232
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 18:15:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6E646F9AB
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 18:15:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id elun1jAKf7kf for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 18:15:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mmawarfare.com (unknown [173.254.228.69])
 by smtp3.osuosl.org (Postfix) with ESMTP id 482FB6F9A0
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 18:15:25 +0000 (UTC)
To: devel@driverdev.osuosl.org
Subject: check again this smart drone
Message-ID: <96b674473ee694ae4f56a0b3ef1584dc@dronesgator.com>
Date: Fri, 26 Feb 2021 16:43:29 +0100
From: "Jan Wilson" <hsameaysonmoi@mmafightland.com>
MIME-Version: 1.0
X-Mailer-Sent-By: 1
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
Reply-To: jindongshper@aliyun.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpIb3BlIGFsbCBpcyB3ZWxsLgpJIGFtIHJlYWNoaW5nIHlvdSBhYm91dCBvdXIgZHJvbmUg
cHJvZHVjdCBJIGhhZCBzZW50IGFib3V0IGEgd2VlayBhZ28uCgpJbiBvdXIgc3RvY2sgd2UgaGF2
ZSB0aGlzIHNtYXJ0IGRyb25lIHJpZ2h0IG5vdywgcmVhZHkgdG8gc2hpcC4KCkZyZXF1ZW5jeTog
NUcKRlBWIGltYWdlIHRyYW5zbWlzc2lvbjogNUcgV2lGaSwgMTAwMG0KU3RhYmxlIHR3by1heGlz
IG1lY2hhbmljYWwgdW5pdmVyc2FsIGpvaW50CjRLIDExMMKwIHdpZGUtYW5nbGUgYWRqdXN0YWJs
ZSBjYW1lcmEuIEVTQyBjYW1lcmEKQ2hhbm5lbDogNkNICkJhdHRlcnk6IDExLjFWIDIzNTBtQWgg
bGl0aGl1bSBpb24gYmF0dGVyeSAoaW5jbHVkZWQpClRyYW5zbWl0dGVyIGJhdHRlcnk6IEFBKjMK
RmxpZ2h0IHRpbWU6IDMwIG1pbnV0ZXMKUmVtb3RlIGNvbnRyb2wgZGlzdGFuY2U6IGFib3V0IDEw
MDBtCkNvbG91cjogQmxhY2sKRmllbGQgb2YgdmlldzogMTEwwrAgd2lkZSBhbmdsZQo0SyBwaXhl
bHM6ClBpY3R1cmU6IDU3MDAqNDI3NQpWaWRlbzogMzg0MCAqIDEwODAKUXVhZHJpbGF0ZXJhbCBz
aXplOgpQcm9kdWN0IGZvbGRpbmcgc2l6ZSAoQ00pOiAxNyoxMS41KjYuN0NNClByb2R1Y3QgZGV2
ZWxvcG1lbnQgc2l6ZSAoQ00pOiAyNioyNio2LjdDTQoKUHJpY2VzOiAoc2hpcHBpbmcgaW5jbHVk
ZWQpCjI4OS41MCBlYWNoICgxLTIwIHVuaXRzKQoyNzkuNTAgZWFjaCAoMjEtNTAgdW5pdHMpCjI2
OS41MCBlYWNoICg1MS0xMDAgdW5pdHMpCmluIHUgcyBkCgpJZiB5b3Ugd2FudCB0byBvcmRlciBp
dCB0b2RheSwgcmVwbHkgb3VyIGVtYWlsIHdpdGggeW91ciBzaGlwcGluZyBhZGRyZXNzCmRldGFp
bHMsIHdlIHdpbGwgbWFrZSB0aGUgc2hpcG1lbnQgZm9yIHlvdS4KV2UgZG8gd29ybGR3aWRlIHNo
aXBwaW5nLCAxMC0xNSBkYXlzLgoKVGhhbmtzIGFuZCBSZWdhcmRzLApKYW4gV2lsc29uCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
