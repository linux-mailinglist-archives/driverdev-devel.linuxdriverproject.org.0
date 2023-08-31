Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D07478E51B
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Aug 2023 05:31:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B07B982222;
	Thu, 31 Aug 2023 03:31:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B07B982222
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cvkCKj9t_dwj; Thu, 31 Aug 2023 03:31:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85B79821CE;
	Thu, 31 Aug 2023 03:31:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85B79821CE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C5C61BF295
 for <devel@linuxdriverproject.org>; Thu, 31 Aug 2023 03:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5FF241C1F
 for <devel@linuxdriverproject.org>; Thu, 31 Aug 2023 03:31:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5FF241C1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TwW4ckojc-2u for <devel@linuxdriverproject.org>;
 Thu, 31 Aug 2023 03:31:27 +0000 (UTC)
Received: from mtk0.calamp.com (unknown [2.59.254.162])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E183A41C14
 for <devel@driverdev.osuosl.org>; Thu, 31 Aug 2023 03:31:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E183A41C14
From: dragicanovinsky@gmail.com
To: devel@driverdev.osuosl.org
Date: 30 Aug 2023 22:20:38 -0400
Message-ID: <20230830222038.2CABB3FE877A0F88@gmail.com>
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
Reply-To: dragicanovinsky@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SSBhbSBNcnMuIERyYWdpY2EgTm92aW5za3kgZnJvbSBVa3JhaW5lLCB3aWZlIGFuZCB3aWRvdyB0
byB0aGUgCmxhdGUgVmlrdG9yIE5vdmluc2t5LCBhIGNsb3NlIGZyaWVuZCB0byBQcmVzaWRlbnQg
Vm9sb2R5bXlyIApaZWxlbnNreXkgLCBUaGUgZGlyZWN0b3Igb2YKVWtyYWluZSdzIG1lZGlhIGFu
ZCBpbmZvcm1hdGlvbiBjZW50cmUgd2hvIHdhcyBraWxsZWQgaW4gdGhlIAplYXJseSBkYXlzIG9m
IHRoZSBpbnZhc2lvbiBieSB0aGUgUnVzc2lhbi4KCkJlZm9yZSBteSBodXNiYW5k4oCZcyBkZWF0
aCwgaGUgaW5mb3JtZWQgbWUgdGhhdCBoZSBoYWQgZGVwb3NpdGVkIApzb21lIG1vbmV5IHJ1bm5p
bmcgaW50byBzZXZlcmFsIG1pbGxpb25zIG9mIGRvbGxhcnMgd2l0aCBhIGJhbmsgCmFuZCB0aGlz
IG1vbmV5CndhcyBwYXJ0IG9mIHRoZSBtb25leSBoZSB3YXMgZ2l2aW5nIHRvIGtlZXAgYnkgUHJl
c2lkZW50IApWb2xvZHlteXIgWmVsZW5za3l5IHRvIGJlIHVzZWQgZm9yIGhpcyByZS1lbGVjdGlv
biBhbmQgaGUga2VwdCAKdGhpcyBtb25leSBvdmVyc2VhcyBiZWNhdXNlIGhlIGRpZCBub3Qga25v
dyB3aGF0IHRoZSBvdXRjb21lIG9mIAp0aGUgcGVuZGluZyB3YXIgd2l0aCBSdXNzaWEgd291bGQg
YmUgaGVuY2UgaGUgaGFkIHRvbGQgbWUgdGhhdCBpZiAKYW55dGhpbmcgd2VyZSB0byBoYXBwZW4g
dG8gaGltIHdlIHdlcmUgdG8gdXNlIHRoaXMgbW9uZXkgdG8gZmxlZSAKdGhlIGNvdW50cnkgYW5k
IHN0YXJ0IGEgbmV3IGxpZmUgb3ZlcnNlYXMuCgpJIG5lZWQgeW91IGFzIGEgcGFydG5lciB0byBh
c3Npc3QgaW4gY2xhaW1pbmcgdGhlIGZ1bmRzIGZyb20gCndoZXJlIGl0IGlzICBjdXJyZW50bHkg
ZGVwb3NpdGVkIGFuZCBwcm92aWRlIGdvb2QgaW52ZXN0bWVudCAKcGxhbnMgZm9yIGl0IGluCnlv
dXIgY291bnRyeSBhbmQgeW91IHdpbGwgYWxzbyBzZW5kIHVzIHNvbWUgbW9uZXkgYXMgc29vbiBh
cyB5b3UgCmNsYWltIHRoZSBmdW5kcyBzbyB0aGF0IFdlIGNhbiBtYWtlIGFycmFuZ2VtZW50cyBm
b3Igb3VyIGVzY2FwZSAKb3V0IG9mClVrcmFpbmUgYXMgdGhlIFJ1c3NpYW5zIGFyZSBhZHZhbmNp
bmcgdG8gdGhlIGNhcGl0YWwgS2lldiBhdCBhIApmYXN0IHBhY2UuCgpPbmNlIHdlIGFyZSBvdXQs
IGl0IHdvdWxkIGJlIGltcG9ydGFudCB0aGF0IHdlIG1lZXQgaW4gcGVyc29uIHNvIAp0aGF0IHdl
IGNhbiB0aGFuayB5b3UgZm9yIHlvdXIgaGVscCBhbmQgYWxzbyBkaXNjdXNzIGZ1dHVyZSBwbGFu
cyAKYXMgeW91CndpbGwgYmUgY29tcGVuc2F0ZWQgZnJvbSB0aGUgZnVuZHMgZm9yIHlvdXIgaGVs
cCBpZiB5b3UgYWNjZXB0IHRvIAphc3Npc3QgdXMgc28gdGhhdCB3ZSB3aWxsIG5vdCBzdWZmZXIg
aW4gdGhlIGZ1dHVyZS4KCgpJZiB5b3UgZmVlbCB3ZSBjYW4gZG8gdGhpcyB0b2dldGhlciwgcGxl
YXNlIGNvbnRhY3QgbWUgCmltbWVkaWF0ZWx5IGZvciBtb3JlIGRldGFpbHMuCgpUaGFuayBZb3Us
CgpNcnMuIERyYWdpY2EgTm92aW5za3kuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
