Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFE764CE8C
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Dec 2022 18:00:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 181C981437;
	Wed, 14 Dec 2022 17:00:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 181C981437
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RK5oEuqWnF1v; Wed, 14 Dec 2022 17:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFE6C8135B;
	Wed, 14 Dec 2022 17:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFE6C8135B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6EFB71BF947
 for <devel@linuxdriverproject.org>; Wed, 14 Dec 2022 17:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4AD4A81437
 for <devel@linuxdriverproject.org>; Wed, 14 Dec 2022 17:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4AD4A81437
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2uoVvhoqWM7v for <devel@linuxdriverproject.org>;
 Wed, 14 Dec 2022 17:00:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AF828135B
Received: from eaf989a35d74 (unknown [194.177.22.182])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AF828135B
 for <devel@linuxdriverproject.org>; Wed, 14 Dec 2022 17:00:49 +0000 (UTC)
Received: from User (unknown [46.148.40.74])
 by eaf989a35d74 (Postfix) with SMTP id A5084436F9C;
 Wed, 14 Dec 2022 10:15:29 +0000 (UTC)
From: "INFO"<test@d-kvadrat.ru>
Subject: INFO
Date: Wed, 14 Dec 2022 02:15:37 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20221214170051.4AD4A81437@smtp1.osuosl.org>
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
Reply-To: 20155765@ce.pucmm.edu.do
Content-Type: text/plain; charset="cp1251"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBkYXkuCgogCgpGaXJzdGx5LCBJIG11c3Qgc29saWNpdCB5b3VyIGNvbmZpZGVuY2UgaW4g
dGhpcyB0cmFuc2FjdGlvbjsgdGhpcyBpcyBieSB2aXJ0dWUgb2YgaXRzIG5hdHVyZSBhcyAKCmJl
aW5nIHV0dGVybHkgY29uZmlkZW50aWFsIGFuZCB0b3Agc2VjcmV0LiBUaG91Z2ggSSBrbm93IHRo
YXQgYSB0cmFuc2FjdGlvbiBvZiB0aGlzIG1hZ25pdHVkZSAKCndpbGwgbWFrZSBhbnkgb25lIGFw
cHJlaGVuc2l2ZSBhbmQgd29ycmllZCwgYnV0IEkgYW0gYXNzdXJpbmcgeW91IHRoYXQgYWxsIHdp
bGwgYmUgd2VsbCBhdCB0aGUgCgplbmQgb2YgdGhlIGRheS4gSXQgbWF5IHN1cnByaXNlIHlvdSBy
ZWNlaXZpbmcgdGhpcyBsZXR0ZXIgZnJvbSBtZSwgc2luY2UgdGhlcmUgd2FzIG5vIHByZXZpb3Vz
IAoKY29ycmVzcG9uZGVuY2UgYmV0d2VlbiB1cy4gTXkgTmFtZSBpcyBSdXNzZWwsIHBlcnNvbmFs
IEZpbmFuY2lhbCBjb25zdWx0YW50IHRvIG15IExhdGUgY2xpZW50LCAKCmFuIGV4cGF0cmlhdGUg
ZW5naW5lZXIgYW5kIGNvbnRyYWN0b3IuCgoKTXkgcHVycG9zZSBvZiBjb250YWN0aW5nIHlvdSBp
cyBmb3IgeW91IHRvIGhlbHAgbWUgdG8gc2VjdXJlIGhpcyBmdW5kcyBkZXBvc2l0ZWQgd2l0aCB0
aGUgQmFuayAKCmJlZm9yZSBoZSBkaWVkLCB0byBhdm9pZCBpdCBiZWluZyBjb25maXNjYXRlZCBv
ciBkZWNsYXJlZCBhcyB1bmNsYWltZWQgYnkgdGhlIEJhbmsuIFRoZSBmdW5kIAoKdmFsdWUgaXMg
JDc2LDUwMCwwMDAuMDAgKHNldmVudHkgU2l4IE1pbGxpb24sIEZpdmUgSHVuZHJlZCBUaG91c2Fu
ZCBVU0QpLCB0aGlzIG1vbmV5IHdhcyAKCmRlcG9zaXRlZCBieSBteSBsYXRlIGNsaWVudCBiZWZv
cmUgaGUgcGFzc2VkIGF3YXksIG9uIHRoZSAxNnRoIEFwcmlsIDIwMTQsIGFuZCB1cCB0aWxsIHRv
ZGF5IGhpcyAKCnJlbGF0aXZlcyByZW1haW5lZCB1bmtub3duLgoKSSBndWFyYW50ZWUgdGhlIHN1
Y2Nlc3Mgb2YgdGhpcyB0cmFuc2FjdGlvbiBpbiBhbGwgbGVnYWwgZGVmaW5pdGlvbnMuIApBcyBo
aXMgY29uc3VsdGFudC9hY2NvdW50IG1hbmFnZXIgSSBoYXZlIGNvbnRhY3RlZCB0aGUgYmFuayBm
b3IgdGhlIGNsYWltIG9mIHRoZSBmdW5kIGFuZCB0aGUgCgpCYW5rIGhhcyBpc3N1ZWQgbWUgYSBu
b3RpY2UgdG8gY29udGFjdCB0aGUgbmV4dCBvZiBraW4gb3IgdGhlIGFjY291bnQgd2lsbCBiZSBk
ZWNsYXJlZCAKCnVuc2VydmljZWFibGUgYW5kIHRoZSBmdW5kIHdpbGwgYmUgcmV0aXJlZCBieSB0
aGUgc3RhdGUuU2luY2UgdGhpcyBhY2NvdW50IGlzIHNlY3JldCBhbmQgdGhlcmUgCgppcyBubyBv
bmUgbGVmdCB0byBjbGFpbSB0aGUgZnVuZCB0aGF0IGlzIHRoZSByZWFzb24gSSBhbSBjb250YWN0
aW5nIHlvdS4gSSBhbSBhY3R1YWxseSBhc2tpbmcgCgpmb3IgeW91ciBjb25zZW50IHRvIHByZXNl
bnQgeW91IHRvIHRoZSBCYW5rIGFzIHRoZSBOZXh0IG9mIEtpbi9iZW5lZmljaWFyeSBvZiBteSBs
YXRlIGNsaWVudJJzIAoKZnVuZCwgc28gdGhhdCB0aGUgZnVuZCB3aWxsIGJlIHJlbGVhc2VkIHRv
IHlvdSBhcyBoaXMgbmV4dCBvZiBraW4uIEFsbCB0aGUgbGVnYWwgZG9jdW1lbnRzIHRvIAoKYmFj
ayB1cCB5b3VyIGNsYWltIGFzIG15IGNsaWVudJJzIG5leHQgb2YgS2luIHdpbGwgYmUgcHJvdmlk
ZWQuIEFsbCBJIHJlcXVpcmUgaXMgeW91ciBob25lc3QgCgpjb29wZXJhdGlvbiBhbmQgYWJzb2x1
dGUgY29uZmlkZW50aWFsaXR5IGluIG9yZGVyIHRvIGd1YXJhbnRlZSBzdWNjZXNzLgoKIAoKSSB3
aXNoIHRvIHBvaW50IG91dCB0aGF0IEkgd2FudCAyMCUgb2YgdGhpcyBtb25leSB0byBiZSBmb3Ig
ZXhwZW5jZXMgYW5kIENoYXJpdHkgT3JnYW5pemF0aW9ucywgCgp3aGlsZSB0aGUgcmVtYWluaW5n
IGlzIHNoYXJlZCBlcXVhbGx5IGJldHdlZW4gdXMuIFRoaXMgdHJhbnNhY3Rpb24gaXMgZW50aXJl
bHkgcmlzayBmcmVlLiBJIHdpbGwgCgp1c2UgbXkgcG9zaXRpb24gdG8gZ3VhcmFudGVlIHRoZSBz
dWNjZXNzZnVsIGV4ZWN1dGlvbiBvZiB0aGlzIHRyYW5zYWN0aW9uLiBJZiB5b3UgYXJlIAoKaW50
ZXJlc3RlZCwgcGxlYXNlIGNvbnRhY3QgbWUsdXBvbiB5b3VyIHJlc3BvbnNlLCBJIHNoYWxsIHRo
ZW4gcHJvdmlkZSB5b3Ugd2l0aCBtb3JlIGRldGFpbHMgCgp0aGF0IHdpbGwgaGVscCB5b3UgdW5k
ZXJzdGFuZCBtb3JlIG9uIHRoaXMgdHJhbnNhY3Rpb24uCgogCgpUaGUgaW50ZW5kZWQgdHJhbnNh
Y3Rpb24gd2lsbCBiZSBwcm9jZXNzZWQgdW5kZXIgbGVnaXRpbWFjeSBieSBhIGxhd3llcix3aGlj
aCB3aWxsIHByb3RlY3QgbWUgCgphbmQgeW91IGZyb20gYW55IHZpb2xhdGlvbiBvZiBsYXcuCgpJ
ZiB5b3Ugd2lzaCB0byBhY2hpZXZlIHRoZSBnb2FsIHdpdGggbWUsIHBsZWFzZSBraW5kbHkgZ2V0
IGJhY2sgdG8gbWUgd2l0aCB5b3VyIGludGVyZXN0IGZvciAKCmZ1cnRoZXIgZXhwbGFuYXRpb25z
IGFuZCBiZXR0ZXIgdW5kZXJzdGFuZGluZy4gQWxzbyBiZSBraW5kIHRvIGxldCBtZSBrbm93IGlm
IHlvdSBhcmUgbm90IAoKaW50ZXJlc3RlZCBzbyB0aGF0IEkgY2FuIGZ1cnRoZXIgbXkgc2VhcmNo
IHRvIGFub3RoZXIgQ2l0aXplbiB0aGF0IGhhcyB0aGUgc2FtZSBzdXJuYW1lIHdpdGggbXkgCgps
YXRlIGNsaWVudC4KCiAKCktpbmRlc3QgUmVnYXJkcwoKUnVzc2VsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
