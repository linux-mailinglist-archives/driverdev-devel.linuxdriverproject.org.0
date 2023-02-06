Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6584468B649
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Feb 2023 08:20:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F103E81769;
	Mon,  6 Feb 2023 07:20:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F103E81769
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J7ovN3ZPaOyG; Mon,  6 Feb 2023 07:20:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC2F681678;
	Mon,  6 Feb 2023 07:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC2F681678
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 135111BF573
 for <devel@linuxdriverproject.org>; Mon,  6 Feb 2023 07:20:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE33681757
 for <devel@linuxdriverproject.org>; Mon,  6 Feb 2023 07:20:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE33681757
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9GGccUfYY8PE for <devel@linuxdriverproject.org>;
 Mon,  6 Feb 2023 07:20:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0127A81678
Received: from e.armgs.team (e.armgs.team [45.84.130.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0127A81678
 for <devel@linuxdriverproject.org>; Mon,  6 Feb 2023 07:20:30 +0000 (UTC)
Received: from [10.14.68.0] (port=30346 helo=e.armgs.team)
 by relay1.qdit with esmtp (envelope-from <timothy@inbox.lt>)
 id 1pOvnP-009tJ5-JB; Mon, 06 Feb 2023 10:20:11 +0300
Received: from [185.246.220.87] (helo=User)
 by tarm-mail-b01.i with smtp (Exim 4.96)
 (envelope-from <timothy@inbox.lt>) id 1pOvnP-002XXw-0o;
 Mon, 06 Feb 2023 10:20:11 +0300
From: "Timothy Loh"<timothy@inbox.lt>
Date: Sun, 5 Feb 2023 23:20:11 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <E1pOvnP-002XXw-0o@tarm-mail-b01.i>
X-KLMS-Rule-ID: 1
X-KLMS-Message-Action: skipped, AntiSpam
X-KLMS-AntiSpam-Lua-Profiles: 175264 [Feb 06 2023]
X-KLMS-AntiSpam-Version: 5.9.59.0
X-KLMS-AntiSpam-Envelope-From: timothy@inbox.lt
X-KLMS-AntiSpam-Rate: 95
X-KLMS-AntiSpam-Status: spam
X-KLMS-AntiSpam-Method: headers
X-KLMS-AntiSpam-Info: LuaCore: 502 502
 69dee8ef46717dd3cb3eeb129cb7cc8dab9e30f6, {rep_avail}, {reputation ip: black},
 {black address: 185.246.220.87}, {reputation received: black},
 {black received address: 185.246.220.87}, {Prob_reply_not_match_from},
 {Prob_to_header_missing}, {Prob_Advanced_Mass_Sender_X_Mailer},
 {Prob_Reply_to_without_To}, {Prob_From_no_space_freehosting},
 ApMailHostAddress: 185.246.220.87
X-MS-Exchange-Organization-SCL: 9
X-KLMS-AntiSpam-Interceptor-Info: scan successful
X-KLMS-AntiPhishing: Clean, bases: 2023/02/06 06:57:00
X-KLMS-AntiVirus: Kaspersky Security for Linux Mail Server, version 8.0.3.30,
 bases: 2023/02/06 01:18:00 #20834045
X-KLMS-AntiVirus-Status: Clean, skipped
Subject: [Spam]Hello Dear,
X-Mailman-Original-Authentication-Results: relay1.qdit; auth=pass
 smtp.auth=timothy@inbox.lt smtp.mailfrom=timothy@inbox.lt;
 iprev=pass policy.iprev=10.14.68.0
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
Reply-To: 10abuusman@gmail.com
Content-Type: text/plain; charset="cp1251"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzCgpNeSBuYW1lIGlzIFRpbW90aHkgTG9oIExMUC4gSSBhbSBhIGxlYWRpbmcgSG9u
ZyBLb25nIGF0dG9ybmV5IHNwZWNpYWxpemUgaW4gY29ycG9yYXRlIGFuZCBsaXRpZ2F0aW9uIGxh
dyBwcml2YXRlIGVxdWl0eSwgaGVkZ2UgZnVuZHMsIGludmVzdG1lbnQgZnVuZHMsIGZpbmFuY2lh
bCBzZXJ2aWNlcywgYmFua2luZywgYW5kIGJhbmtydXB0Y3kgcHJhY3RpY2VzIGwgYW0gaW50ZXJu
YXRpb25hbGx5IHJlY29nbml6ZWQuCgpJdCBtYXkgc3VycHJpc2UgeW91IHRvIHJlY2VpdmUgdGhp
cyBsZXR0ZXIgZnJvbSBtZSwgc2luY2UgdGhlcmUgaGFzIGJlZW4gbm8gcHJldmlvdXMgY29ycmVz
cG9uZGVuY2UgYmV0d2VlbiB1cy4gIEkgd2lsbCBhbHNvIGxpa2UgdG8gbWFrZSBpdCBjbGVhciBo
ZXJlIHRoYXQgbCBrbm93IHRoYXQgdGhlIGludGVybmV0IGhhcyBiZWVuIGdyb3NzbHkgYWJ1c2Vk
IGJ5IGNyaW1pbmFsIG1pbmRlZCBwZW9wbGUgbWFraW5nIGl0IGRpZmZpY3VsdCBmb3IgcGVvcGxl
IHdpdGggZ2VudWluZSBpbnRlbnRpb24gdG8gY29ycmVzcG9uZCBhbmQgZXhjaGFuZ2Ugdmlld3Mg
d2l0aG91dCBza2VwdGljaXNtLgoKVGhlcmUgYXJlIHVuY2xhaW1lZCBmdW5kcyBoZWxkIGJ5IG91
ciBkZWNlYXNlZCBjbGllbnQuCgpUaGUgdHJhbnNhY3Rpb24gcGVydGFpbnMgdG8gYW4gdW5jbGFp
bWVkIEZ1bmRzIHNhdmluZ3MgbW9uZXRhcnkgZGVwb3NpdCBpbiB0aGUgc3VtIG9mIFNpeHRlZW4g
TWlsbGlvbiwgTmluZSBIdW5kcmVkIFRob3VzYW5kIFVTIERvbGxhcnMgKCQxNiw5MDAsMDAwKSB3
aXRoIG9uZSBvZiB0aGUgcHJpbWUgZ2xvYmFsIEZpbmFuY2UgQ29tcGFuaWVzLiBUaGUgcG9saWN5
IGhvbGRlciB3YXMgb25lIG9mIG91ciBjbGllbnRzIGFuZCBJdGFsaWFuIGFjdHJlc3MgTHVjaWEg
Qm9z6C4gd2hvIHdhcyBhIGZpbG0gYWN0cmVzcyB3aG8gZGllZCBvbiBNYXJjaCAyMyBvZiBwbmV1
bW9uaWEgYWZ0ZXIgY29udHJhY3RpbmcgQ09WSUQtMTkuIC4gU2luY2UgSGVyIGRlYXRoIG5vIG9u
ZSBoYXMgY29tZSBmb3J3YXJkIGZvciB0aGUgY2xhaW0gYW5kIGFsbCBvdXIgZWZmb3J0cyB0byBs
b2NhdGUgaGlzIHJlbGF0aXZlcyBoYXZlIHByb3ZlZCB1bnN1Y2Nlc3NmdWwuIFRoZSBGaW5hbmNl
IGNvbXBhbnkgcG9saWN5IHN0aXB1bGF0ZXMgdGhhdCCTRnVuZHMiIG5vdCBjbGFpbWVkIG11c3Qg
YmUgdHVybmVkIG92ZXIgdG8gdGhlIGFiYW5kb25lZCBwcm9wZXJ0eSBkaXZpc2lvbiBvZiB0aGUg
c3RhdGUgdHJlYXN1cnkgYWZ0ZXIgdGhlIGRlYWRsaW5lLgoKVGhlcmVmb3JlLCBJIGFzayBmb3Ig
eW91ciBjb25zZW50IHRvIGJlIGluIHBhcnRuZXJzaGlwIHdpdGggbWUgZm9yIHRoZSBjbGFpbSBv
ZiB0aGVzZSBGdW5kcywgSWYgeW91IHBlcm1pdCBtZSB0byBhZGQgeW91ciBuYW1lIHRvIHRoZSBw
b2xpY3kgRnVuZHMsIGFsbCBwcm9jZWVkcyB3aWxsIGJlIHByb2Nlc3NlZCBvbiB5b3VyIGJlaGFs
Zi4gSSB3aXNoIHRvIHBvaW50IG91dCB0aGF0IEkgd2FudCAxMCUgb2YgdGhpcyBtb25leSB0byBi
ZSBzaGFyZWQgYW1vbmcgY2hhcml0eSBvcmdhbml6YXRpb25zIHdoaWxlIHRoZSByZW1haW5pbmcg
OTAlIHdpbGwgYmUgc2hhcmVkIGJldHdlZW4gdXMuCgpUaGlzIGlzIDEwMCUgcmlzayBmcmVlIGFu
ZCAxMDAlIGxlZ2FsLiBJIGRvIGhhdmUgYWxsIG5lY2Vzc2FyeSBkb2N1bWVudGF0aW9uIHRvIGV4
cGVkaXRlIHRoZSBwcm9jZXNzIGluIGEgaGlnaGx5IHByb2Zlc3Npb25hbCBhbmQgY29uZmlkZW50
aWFsIG1hbm5lci4gSSB3aWxsIHByb3ZpZGUgYWxsIHRoZSByZWxldmFudCBkb2N1bWVudHMgdG8g
c3Vic3RhbnRpYXRlIHlvdXIgY2xhaW0gYXMgdGhlIGJlbmVmaWNpYXJ5LiBUaGlzIGNsYWltIHJl
cXVpcmVzIGEgaGlnaCBsZXZlbCBvZiBjb25maWRlbnRpYWxpdHkgYW5kIGl0IG1heSB0YWtlIHVw
IHRvIFRlbiAoMTApIGJ1c2luZXNzIGRheXMsIGZyb20gdGhlIGRhdGUgb2YgcmVjZWlwdCBvZiB5
b3VyIGNvbnNlbnQuCgpZb3VyIGVhcmxpZXN0IHJlc3BvbnNlIHRvIHRoaXMgbWF0dGVyIHdvdWxk
IGJlIGhpZ2hseSBhcHByZWNpYXRlZCwKCkJlc3QgUmVnYXJkcywKVGltb3RoeSBMb2gKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
