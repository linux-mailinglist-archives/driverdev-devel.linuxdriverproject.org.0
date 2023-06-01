Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 606A9723624
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Jun 2023 06:19:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E9EE40933;
	Tue,  6 Jun 2023 04:19:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E9EE40933
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z98jyGdZx-f1; Tue,  6 Jun 2023 04:19:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D811D40976;
	Tue,  6 Jun 2023 04:19:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D811D40976
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1890C1BF3F9
 for <devel@linuxdriverproject.org>; Tue,  6 Jun 2023 04:18:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1F0860E91
 for <devel@linuxdriverproject.org>; Tue,  6 Jun 2023 04:18:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1F0860E91
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eGausw-YSsnO for <devel@linuxdriverproject.org>;
 Tue,  6 Jun 2023 04:18:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1832460DFD
Received: from srv.cprapid.com (unknown [185.8.173.223])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1832460DFD
 for <devel@driverdev.osuosl.org>; Tue,  6 Jun 2023 04:18:54 +0000 (UTC)
Received: from eduffect by srv.cprapid.com with local (Exim 4.96)
 (envelope-from <support@eduffect.com>) id 1q4XN1-0006BK-1d
 for devel@driverdev.osuosl.org; Thu, 01 Jun 2023 03:44:55 +0200
To: devel@driverdev.osuosl.org
Subject: hello
X-PHP-Script: eduffect.com/wp-content/N138UVkOgLJ.php for 154.160.26.225
X-PHP-Originating-Script: 1009:N138UVkOgLJ.php
Date: Thu, 1 Jun 2023 01:44:55 +0000
From: "Nearra Houphouet." <support@eduffect.com>
Message-ID: <4ec1a0b118ef360740f2185be613ca51@eduffect.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv.cprapid.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [1009 993] / [47 12]
X-AntiAbuse: Sender Address Domain - eduffect.com
X-Get-Message-Sender-Via: srv.cprapid.com: authenticated_id: eduffect/from_h
X-Authenticated-Sender: srv.cprapid.com: support@eduffect.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=eduffect.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vhhj1KDdhEsPkYIiAkk6TKYo/eTPbyNSAoCMHmMywcw=; b=hVTkX4UXWtwfBfTeGaLmYEDQMs
 M84Dz4faliYa4M5obb95/KvGUZoPNtNu+XVMv7y1z4WJqN6xtKurzXsMI3wdPVyh2NjMFBFcnHHGu
 N1ExeEdWiTXW4uO8OHwapyogqUiKxdd2J4wgQGRJf/YSoCIyN8FnS16yhVMacewFvHrxWH0dE/Uo+
 GneYj+LtQwy1zk6T3XIa9BxdG/u0iNi5JX/hchB/Vt1L+AGPuVhSX8TAFNAZi+YYhY4u4HGARRTW/
 XqlpzvupdxCmUD8tRmgrcq0Zi32V4QzmuotLCc5f6+nGA28gy9FvKNAIouzz2u7UXSkvqxXJ8sw0s
 JIPuUh+g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=eduffect.com header.i=@eduffect.com
 header.a=rsa-sha256 header.s=default header.b=hVTkX4UX
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
Reply-To: nearrah2023@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbSBOZWFycmEgSG91cGhvdWV0CkRlYXJlc3QgT25lCsKgCkkgYW0gd3JpdGluZyB0aGlzIGxl
dHRlciB3aXRoIGR1ZSByZXNwZWN0IGFuZCBoZWFydGJyZWFrIHNpbmNlIHdlIGhhdmUgbm90IGtu
b3duIG9yIG1ldCBvdXJzZWx2ZXMgcHJldmlvdXNseS4gSSBhbSBhc2tpbmcgZm9yIHlvdXIgYXNz
aXN0YW5jZSBhZnRlciBJIGhhdmUgZ29uZSB0aHJvdWdoIGEgcHJvZmlsZSB0aGF0IHNwZWFrcyBn
b29kIG9mIHlvdS4gSSB3YW50IHRvIGZpbmQgb3V0IGlmIGl0J3MgcG9zc2libGUgZm9yIHlvdSB0
byBkZWFsIHdpdGggaW5kaXZpZHVhbHMgYXMgdG8gaW52ZXN0bWVudC4gSSBjYW1lIGFjcm9zcyB5
b3VyIHByb2ZpbGUgYW5kIEkgZmVlbCBpdCdzIGhpZ2hseSByZXB1dGFibGUgdGhhdCBpcyB3aHkg
SSBwaWNrZWQgYW4gaW50ZXJlc3QgaW4gZ2V0dGluZyBhY3Jvc3MgdG8geW91IGluIHJlc3BlY3Qg
b2YgdGhlIGludmVzdG1lbnQgYXQgbXkgZGlzcG9zYWwuIMKgSSB3aWxsIGJlIHNvIGdsYWQgaWYg
eW91IGNhbiBhbGxvdyBtZSBhbmQgbGVhZCBtZSB0byB0aGUgcmlnaHQgY2hhbm5lbCB0b3dhcmRz
IHlvdXIgYXNzaXN0YW5jZSB0byBteSBzaXR1YXRpb24gbm93Lkkgd2lsbCBtYWtlIG15IHByb3Bv
c2FsIHdlbGwga25vd24gaWYgSSBhbSBnaXZlbiB0aGUgb3Bwb3J0dW5pdHkuCsKgCkkgd291bGQg
bGlrZSB0byB1c2UgdGhpcyBvcHBvcnR1bml0eSB0byBpbnRyb2R1Y2UgbXlzZWxmIHRvIHlvdS5J
IGFtIDI1WWVhcnMgT2xkIEdpcmwgZnJvbSDCoChDT1RFIEQnSVZPSVJFIFdFU1QgQUZSSUNBKSAs
dGhlIG9ubHkgRGF1Z2h0ZXIgb2YgSG91cGhvdWV0LCBNeSBmYXRoZXIgaXMgbm93IGxhdGUsaGUg
d2FzIGEgd2VsbCBrbm93biBjb2NvYSBtZXJjaGFudCBidXNpbmVzc21hbiBpbiBteSBjb3VudHJ5
IChjw7R0ZSBkIGl2b2lyZSkgwqBoZSB3YXMgwqBwb2lzb25lZCBieSBoaXMgY28tYnVzaW5lc3Mg
cGFydG5lci4gVGhlIG1haW4gcmVhc29uIHdoeSBJIGFtIGNvbnRhY3RpbmcgeW91IG5vdyBpcyB0
byBzZWVrIHlvdXIgYXNzaXN0YW5jZSBpbiB0aGUgYXJlYSBvZiBteSBmdXR1cmUgaW52ZXN0bWVu
dCBhbmQgYWxzbyBmb3IgYSBoZWxwIHRvIGhhbmQgb3ZlciBzb21lIGh1Z2UgYW1vdW50IG9mIG1v
bmV5IGluIG15IHBvc3Nlc3Npb24uCsKgClRoaXMgwqBmdW5kIMKgKFVTNS43IE1pbGxpb24gZG9s
bGFycykgd2FzIMKgZGVwb3NpdGVkIGluIGEgwqBwcml2YXRlIHNlY3VyaXR5IGNvbXBhbnkgb3V0
c2lkZSBteSBjb3VudHJ5IGluIChFVVJPUEVBTikgYSB5ZWFyIGFnbyBieSBteSBmYXRoZXIgaGUg
bWFkZSBtZSB0aGUgc29sZSBiZW5lZmljaWFyeS5JIGFtIG5vdyBhc2tpbmcgeW91IHRvIHN0YW5k
IG9uIG15IGJlaGFsZix0byBzdGFuZCBhcyBteSBwYXJ0bmVyIGFuZCBpbiB0aW1lIG9mIHRoZSBj
bGFpbSBhbmQgaW52ZXN0bWVudCBhcyB3ZWxsLgrCoApJIGhhdmUgbWFkZSB1cCBteSBtaW5kIHRv
IG9mZmVyIHlvdSAzMCVvZiB0aGUgdG90YWwgbW9uZXkgd2hpbGUgdGhlIHJlbWFpbmluZyB3aWxs
IGdvIGludG8gYSBwcm9kdWN0aXZlIGludmVzdG1lbnQuCsKgClBscyBhdHRhY2ggeW91ciBkaXJl
Y3QgYW5kIGZ1bGwgaW5mb3JtYXRpb24gYXMgeW91IHJlcGx5IHRvIG1lLiDCoHBsZWFzZSDCoGVt
YWlsIG1lIHdpdGggwqBteSBwcml2YXRlIGVtYWlsIDogwqBuZWFycmFoMjAyM0BnbWFpbC5jb20g
wqAgZm9yIG1vcmUgZGV0YWlscy4KwqAKVGhhbmtzIGFuZCByZW1haW4gYmxlc3MuCkJlc3QgUmVn
YXJkcwpOZWFycmEgSG91cGhvdWV0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
