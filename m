Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CDC483CB3A
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jan 2024 19:36:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 475926148E;
	Thu, 25 Jan 2024 18:36:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 475926148E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPe4w6v3pF5p; Thu, 25 Jan 2024 18:36:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16DFF60F12;
	Thu, 25 Jan 2024 18:36:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 16DFF60F12
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 716D51BF44A
 for <devel@linuxdriverproject.org>; Thu, 25 Jan 2024 18:36:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A3DC83D8C
 for <devel@linuxdriverproject.org>; Thu, 25 Jan 2024 18:36:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A3DC83D8C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gvVPDZSLw8lz for <devel@linuxdriverproject.org>;
 Thu, 25 Jan 2024 18:36:18 +0000 (UTC)
X-Greylist: delayed 1191 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 25 Jan 2024 18:36:18 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 348EF83D8B
Received: from msg112.plala.or.jp (msg112.plala.or.jp [60.36.166.29])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 348EF83D8B
 for <devel@driverdev.osuosl.org>; Thu, 25 Jan 2024 18:36:17 +0000 (UTC)
Received: from mdkim-o06.ake-mailbk.plala.or.jp ([172.23.12.55])
 by msg111.plala.or.jp with ESMTP id
 <20240125181625.QZXF22198.msg111.plala.or.jp@mdkim-o06.ake-mailbk.plala.or.jp>
 for <devel@driverdev.osuosl.org>; Fri, 26 Jan 2024 03:16:25 +0900
X-CSE-ConnectionGUID: Y2J7ppKeQKadhKC+BqRUfw==
X-CSE-MsgGUID: q0FJ234KTJ6Bal5hyDlAxA==
Received: from msg11.ake-mailbk.plala.or.jp (HELO msg11.plala.or.jp)
 ([172.23.12.76])
 by mdkim-o.ake-mailbk.plala.or.jp with ESMTP; 26 Jan 2024 03:16:26 +0900
Received: from msc31.plala.or.jp ([172.23.13.1]) by msg11.plala.or.jp
 with ESMTP
 id <20240125181625.VEFX10938.msg11.plala.or.jp@msc31.plala.or.jp>
 for <devel@driverdev.osuosl.org>; Fri, 26 Jan 2024 03:16:25 +0900
Received: from [45.9.168.173] by msc31.plala.or.jp with ESMTP
 id <20240125181624.SRAD24837.msc31.plala.or.jp@[45.9.168.173]>
 for <devel@driverdev.osuosl.org>; Fri, 26 Jan 2024 03:16:24 +0900
From: support@amail.plala.or.jp
To: devel@driverdev.osuosl.org
Subject: =?UTF-8?B?UmVnaXN0cmF0aW9uIG9mIFZlbmRvcnMgZm9yIDIwMjTigJMyMDI1IEFyYW1jbyBQcm9qZWN0cw==?=
Date: 25 Jan 2024 10:16:22 -0800
Message-ID: <20240125101622.F7EF47E6FF7B804D@amail.plala.or.jp>
MIME-Version: 1.0
X-VirusScan: Outbound; mvir-ac31; Fri, 26 Jan 2024 03:16:25 +0900
X-VirusScan: Outbound; mvir-ac11; Fri, 26 Jan 2024 03:16:25 +0900
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=plala.or.jp; q=dns/txt; s=p20240201; t=1706206586;
 x=1737742586;
 h=reply-to:from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tZZUQBx8m2dAF9PNMOu51g7sG+YK+vKuYgUyIcosOzo=;
 b=q4HMFkmhF7I0P23biGnOud0lEyEoL/Eo263LHgaMwzYOGQWPnC7mPsz9
 uRKCBrjiThGB2IgPLObwuOB16C2lM7JnCZ7DG8jkaTERU+OGINgE0GxgX
 GpVn9IWJGoepCs0NnUXtZcdXp/wVHV3t/koSvqQneahi5ZM5oeTCB4GZV
 4NcKdP4U3ecKuNzi+vC6RiQGuXqU3+A90QTEl9LBAnNvDfF0tbVsDy0Hd
 KIa9E25hydsK7EYISohDu+1wFcWHduxgQL7a0iQ1Oq2RSABlgKk7Yt7B4
 ozxZMTF10+S/5SkQ6QVowbl1o3AL947CdHGTMs8Fi8YLXmuGfqZhCUFlb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=plala.or.jp header.i=@plala.or.jp
 header.a=rsa-sha256 header.s=p20240201 header.b=q4HMFkmh
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
Reply-To: procurement@saudiaramcovendorprocurements-uae.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzIFNpci9NYWRhbSwKCldlIGFyZSBleHRlbmRpbmcgYW4gaW52aXRhdGlvbiB0byB5
b3VyIHZhbHVlZCBjb21wYW55IHRvIHJlZ2lzdGVyIAphcyBwb3RlbnRpYWwgc3VwcGxpZXJzIGFu
ZCBwYXJ0bmVycyBmb3IgdGhlIEFyYW1jbyBQZXRyb2xldW0gClJlZmluZXJpZXMgMjAyNOKAkzIw
MjUgcHJvamVjdHMuCgpBbGwgY29tcGFuaWVzIGZyb20gYWNyb3NzIHRoZSB3b3JsZCBhcmUgb3Bl
biB0byB0aGlzIHByb2plY3Q7IGlmIAp5b3UncmUgaW50ZXJlc3RlZCBpbiBwYXJ0aWNpcGF0aW5n
LCBraW5kbHkgcmVxdWVzdCB0aGUgRU9JIGFuZCAKVmVuZG9yJ3MgUXVlc3Rpb25uYWlyZS4KCldl
IGFwcHJlY2lhdGUgeW91ciBpbnRlcmVzdCBpbiB0aGlzIGludml0YXRpb24gYW5kIGxvb2sgZm9y
d2FyZCAKdG8gcmVjZWl2aW5nIHlvdXIgcHJvbXB0IHJlc3BvbnNlLgoKCktpbmQgUmVnYXJkcywK
ClJhZmlxIE1vaGFtbWFkCkFzc2lzdGFudCBQcm9qZWN0IE1hbmFnZXIuClNhdWRpIEFyYWJpYSBP
aWwgQ29tcGFueShBcmFtY28pCkFsLU1pZHJhIFRvd2VyIEJ1aWxkaW5nIDNyZCBmbG9vciwKRWFz
dCBXaW5nIERoYWhyYW4gMzEzMTEsIFNhdWRpIEFyYWJpYS4KRW1haWw6IHByb2N1cmVtZW50QHNh
dWRpYXJhbWNvdmVuZG9ycHJvY3VyZW1lbnRzLXVhZS5jb20KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
