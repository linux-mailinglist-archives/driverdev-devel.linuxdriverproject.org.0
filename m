Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E81416421CA
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Dec 2022 04:03:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5DE1402D1;
	Mon,  5 Dec 2022 03:03:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5DE1402D1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B8dDc70a07rm; Mon,  5 Dec 2022 03:03:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67A31402B3;
	Mon,  5 Dec 2022 03:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67A31402B3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3113B1BF39D
 for <devel@linuxdriverproject.org>; Mon,  5 Dec 2022 03:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B768813D2
 for <devel@linuxdriverproject.org>; Mon,  5 Dec 2022 03:03:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B768813D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RhDlJU_I0Lj5 for <devel@linuxdriverproject.org>;
 Mon,  5 Dec 2022 03:03:35 +0000 (UTC)
X-Greylist: delayed 00:10:03 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CA47813BC
Received: from slot0.crystalscrop.com (slot0.crystalscrop.com [84.21.172.79])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CA47813BC
 for <devel@driverdev.osuosl.org>; Mon,  5 Dec 2022 03:03:34 +0000 (UTC)
From: Evalen<elva@mayleda.co>
To: devel@driverdev.osuosl.org
Subject: inquiry
Date: 4 Dec 2022 18:53:30 -0800
Message-ID: <20221204182431.0C0FAF5AFD2A0237@mayleda.co>
MIME-Version: 1.0
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
Reply-To: elva@mayleda.co
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGVsbG8sCgpXYXJtIEdyZWV0aW5nIGZyb20gdXMuCgpJIGFtIEVsdmFsZW4gYXQgTEVEQSBDT01Q
QU5ZLCBXZSBhcmUgYmVlbiByZWNvbW1lbmRlZCB0aGF0IHlvdQphcmUgYW4gZXhwZXJ0IGluIHlv
dXIgZmllbGQgYW5kIHdlIGFyZSBjaGFzaW5nIHN1cHBsaWVycyBhbmQKbWFudWZhY3R1cmVycyBv
ZiB0aGlzIHByb2R1Y3RzIHRvIGVuYWJsZSB1cyBtZWV0IG91ciBkZW1hbmQsIHdlCmhhdmUgZ29u
ZSB0aHJvdWdoIHlvdXIgd2Vic2l0ZSBhbmQgd2UgYXJlIGludGVyZXN0ZWQgaW4geW91cgpwcm9k
dWN0LAoKUGxlYXNlIGxldCB1cyBoYXZlIHlvdXIgcHJpY2VzIGFuZCBjYXRhbG9nIGlmIGF2YWls
YWJsZSBBc2FwCgpZb3VyIHVyZ2VudCByZXNwb25zZSB3aWxsIGJlIGFwcHJlY2lhdGVkCgoKClJl
Z2FyZHMsCgpFbHZhClRlbC4oMCkzNDM4NjI0CmFkZCwgUmFkaW92w6RnZW4gMTJCLCAxMzIgNDYg
TGlkaW5nw7YsIFN3ZWRlbgrCoGVsdmFAbWF5bGVkYS5jbwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhk
cml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
