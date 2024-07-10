Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B7892D111
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2024 13:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C49B80E8F;
	Wed, 10 Jul 2024 11:54:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HiVwMNx5MIzh; Wed, 10 Jul 2024 11:54:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65FD280E95
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65FD280E95;
	Wed, 10 Jul 2024 11:54:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5A2F1BF977
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Jul 2024 11:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B18FE40F62
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Jul 2024 11:54:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vnV1i-htP1NN for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Jul 2024 11:54:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=74.208.96.204;
 helo=rationalsites.com; envelope-from=lsparrish_bct@rationalsites.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C78E340F5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C78E340F5E
Received: from rationalsites.com (rationalsites.com [74.208.96.204])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C78E340F5E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 10 Jul 2024 11:54:47 +0000 (UTC)
Received: from User (localhost [127.0.0.1])
 by rationalsites.com (Postfix) with SMTP id 8F42FA938C;
 Wed, 10 Jul 2024 02:51:46 -0600 (MDT)
From: "Paul Matondi"<lsparrish_bct@rationalsites.com>
Subject: From. Paul Matondi
Date: Wed, 10 Jul 2024 01:52:03 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20240710085147.8F42FA938C@rationalsites.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=rationalsites.com; s=mail; t=1720601519;
 bh=6RdXtdb3BTmjw+bagU+kJA/ioLunWEJGDWB4jgHNFxk=;
 h=Reply-To:From:Subject:Date:From;
 b=oTu2vd+puU2PnwM0CyD7exXF1+xCogXnAlIzt+YU2EJXF+wBwymxYDEeDd1uHNs1A
 jnEse1a5NsE2JmKa2kaWmLid9+r6RvcAxO6T2iOFwNZmHHV6drMihzjtaTvRX3tI/B
 mfeI3jX9xeYEY7GYi0VsZx3g/lQW8YWIhtgv/yqtWGS1U7Rs+TmBHKkjt0zeLbRq0v
 +tddcCOPWPwKMVAuwkeNl/3sX/GB7JKheJcORecaP9L9odsWMd/ymZ0ADwBxZXCvPK
 5clv8m1vXf3fFajiy/X/o/4kgnBqgf+Z4KY9P7Gh6SZc1UN74/fol1qln8MoSCGhFD
 mNN/BU2YFPx5w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=rationalsites.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=rationalsites.com header.i=@rationalsites.com
 header.a=rsa-sha256 header.s=mail header.b=oTu2vd+p
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
Reply-To: paulmatondi82@gmail.com
Content-Type: text/plain; charset="cp1251"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbS4gUGF1bCBNYXRvbmRpCgpUZWw6ICsyNyA4NDQyODM5MTAsCgpEZWFyIEZyaWVuZAoKSSBo
b3BlIHRoaXMgbWVzc2FnZSBmaW5kcyB5b3Ugd2VsbC4gV2UgZGlzY292ZXJlZCB5b3VyIGNvbnRh
Y3QgaW5mb3JtYXRpb24gZHVyaW5nIG91ciBzZWFyY2ggZm9yIGEgdHJ1c3R3b3J0aHkgZm9yZWln
biBwYXJ0bmVyIHdobyBjYW4gYXNzaXN0IHVzIGluIGEgY3JpdGljYWwgbWF0dGVyLiBQbGVhc2Ug
YWNjZXB0IG91ciBhcG9sb2dpZXMgaWYgdGhpcyBlbWFpbCBjYXVzZXMgYW55IGRpc2NvbWZvcnQs
IGFzIHdlIGFyZSByZWFjaGluZyBvdXQgdG8geW91IHdpdGhvdXQgcHJpb3IgYWNxdWFpbnRhbmNl
LgoKTXkgbmFtZSBpcyBQYXVsIE1hdG9uZGksIGFuZCBJIGFtIHJlYWNoaW5nIG91dCBvbiBiZWhh
bGYgb2YgbXkgZmFtaWx5LiBEdWUgdG8gdGhlIHBvbGl0aWNhbCBjcmlzaXMgaW4gWmltYmFid2Us
IHdlIGFyZSBjdXJyZW50bHkgcmVmdWdlZXMgaW4gU291dGggQWZyaWNhIGFuZCB1cmdlbnRseSBu
ZWVkIHlvdXIgYXNzaXN0YW5jZS4KCk91ciBmYXRoZXIsIFNpciBDbGlmZm9yZCBNYXRvbmRpLCB3
YXMgYSBwcm9taW5lbnQgZmFybWVyIGluIFppbWJhYndlIHdobyBvcHBvc2VkIFByZXNpZGVudCBS
b2JlcnQgTXVnYWJlknMgbGFuZCBwb2xpY2llcy4gQXMgYSByZXN1bHQsIG91ciBmYXJtIHdhcyBk
ZXN0cm95ZWQsIGFuZCBvdXIgZmF0aGVyIHdhcyBzZXZlcmVseSBiZWF0ZW4sIGxlYWRpbmcgdG8g
aGlzIGRlYXRoLiBCZWZvcmUgaGUgcGFzc2VkLCBoZSBkZXBvc2l0ZWQgJDMwIG1pbGxpb24gaW4g
YSBTb3V0aCBBZnJpY2FuIGZpbmFuY2lhbCBpbnN0aXR1dGlvbiBmb3IgcHVyY2hhc2luZyBmYXJt
aW5nIGVxdWlwbWVudC4KCkFzIHJlZnVnZWVzLCB3ZSBjYW5ub3QgYWNjZXNzIHRoZXNlIGZ1bmRz
LiBXZSBzZWVrIHlvdXIgaGVscCB0byB0cmFuc2ZlciB0aGUgbW9uZXkgb3V0IG9mIFNvdXRoIEFm
cmljYSBieSBzdGFuZGluZyBhcyBvdXIgZmF0aGVyJ3MgYmVuZWZpY2lhcnksIGZhY2lsaXRhdGVk
IGJ5IGhpcyBmaW5hbmNpYWwgYXR0b3JuZXkuCgpJbiBhcHByZWNpYXRpb24sIHdlIG9mZmVyIHlv
dSAzNSUgb2YgdGhlIHRvdGFsIGZ1bmRzLCB3aXRoIDUlIGFsbG9jYXRlZCBmb3IgdHJhbnNmZXIt
cmVsYXRlZCBleHBlbnNlcy4gVGhlIHJlbWFpbmluZyA2MCUgd2lsbCBoZWxwIHVzIHN0YXJ0IGEg
bmV3IGJ1c2luZXNzIGluIHlvdXIgY291bnRyeSB3aXRoIHlvdXIgc3VwcG9ydC4KClBsZWFzZSBy
ZXNwb25kIGlmIHlvdSBhcmUgd2lsbGluZyB0byBhc3Npc3QsIGFuZCB3ZSB3aWxsIHByb3ZpZGUg
ZnVydGhlciBkZXRhaWxzLgoKVGhhbmsgeW91IGFuZCBHb2QgYmxlc3MsCgpQYXVsIGFuZCBTYW5k
aWxlIE1hdG9uZGkKKE9uIGJlaGFsZiBvZiB0aGUgTWF0b25kaSBGYW1pbHkpCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
