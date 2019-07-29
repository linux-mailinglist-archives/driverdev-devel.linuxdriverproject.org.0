Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4F5782C9
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 02:21:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94C7486D2D;
	Mon, 29 Jul 2019 00:21:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KrcoiMLP-GCP; Mon, 29 Jul 2019 00:21:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C43986CE5;
	Mon, 29 Jul 2019 00:21:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBFC51BF866
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 00:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B594520112
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 00:21:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UxbqIMeOJW8N for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 00:21:04 +0000 (UTC)
X-Greylist: delayed 00:10:03 by SQLgrey-1.7.6
Received: from sonic308-19.consmr.mail.ir2.yahoo.com
 (sonic308-19.consmr.mail.ir2.yahoo.com [77.238.178.147])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E49720016
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 00:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s2048;
 t=1564359662; bh=zVt88sYH3v7s+sr9umyX3TgPXooN4DtTLctuORd9m1E=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=R63O1VIsU7iJj3gB9mgzUcQmvkV9AEPoJDSs3PXRWEYFS854/nhYENHecRep2XFm+HJyCeiFYQYVdL2ecNY/0uvmHB8BlAH73emHRq/cwHujdCFuvXdw8nIMPzrReiY8+wdxB4eS9eBBu/Snv71nlFO3auH7kgl4Xa7ikMlJr7JfQ2ZGWiQv2y69JRGoIKy4FRTxQSu6cQFCxa5Ca+71FsntKlfD/w+DKpYdfSRaLDGnj0vwum4t7Pwxno2ScOoUw9SJhj1zMDRSkINRCWGgn6524bIi7GIUSHTzsfxrF0w4crztJNnRCeTy/7iIu5w4wb9jSwX7EGYG9DVAlpXl2A==
X-YMail-OSG: 8Ak4UgAVM1mboHECZoxRO.i.8jtuQ.Z2GJJTmu6WtFk_tFspJo9eMm1icBCL0ml
 7DVd__AlWU6usCqokWKoQvpatKYYcwdYf7caZMtJiQ_IM8rRETLRwLlo0Or0ddvhgiD145WVzD13
 BIJ1hM9RnlXfFFZBXenTOsB3BuUg51Id0uSpOL_P8pH3HZ73wYtHf7kXsmBitsfYoGr4Q1JfohBM
 RehAl84cKMSOj9NxR2xgGqOqZZQ5CUWsX_s0tUPdfhCYK_nuWnub7FGRvHrAu1LmRcn7tpqfsI7x
 3IBr9ppG_BhBX1FsYzeSnQO7jyt2Xv4AQZYWcbyB2GLE_TrOBVspJN8V8pppYFTylSMQwDcxYBar
 64wPwsTlMXFcZrc.art2UyZ7J9LuN9ujCFf57qNBk9CoxK0Uitc8pcMRQDkSEZTMXYI2lPc8icvC
 fkQjffWJ7vkhdWQSqlhMBqIgPNPgnu0oEHTl0.d3juAhwGz0By_4SWKxJWL.jtHIeOmNEJmDFm2q
 j60.sP93aHIIro6u1BW0H0rPuhzNObENG2f9LmxDp7eSakuvCbXSS8HlpLicEBfxWy.IxJ7vU4u7
 s7zt.2OLxttwQPvvnfTecuoVTL73EFc9jGn1kBHTEi9BpU84cXWYC5q3_EXYGZwukcAtqQSreD_3
 Z8NC1C3fid2uoRUx3zG6GGYeuHL3QhMZTh_9mvGS4uAtOLaDZlNrmyE2r4bCRBnj6VpBK9G1q6N3
 FWuNEliNlYcT4Sg4HaW6CpcXE4IFAXU2tlV2oTcj6lmqnvUvdnM04VIfV80fWJqljWAIq9GKVqSJ
 IMp90gIJ7qx_MNBCeGp3RL_RnzqZf5XWi_4PJ1kjJGP6iOX0_UmtSFhduRe0Dy6XE.8.Kh8Vi3Qw
 wDo9SaQZR6tDe3BZxEYDCcWoQb4TRbmIupxumCgDJi82mJYzzTJKTu.v66zX21EtrIIRIFFsoQpv
 Mz1OfGPkYPAhMXABgpg.b5EGY9YwsOOa4y71BiaZsunwuYRWfLbY1_NKb1dHbGio2urrtSW_f8V6
 Q0J8X2aBBj3lvmerbWZKKiQOWDEQPaf6RuoxnT1F8PXRlL1icy1Z9G2wpg6HeouMu20fJE4d0oPg
 Nn5VDu.SECYbTcBzY._9igRNOPgRPCpMlxH7bQtlWNv3vPYLhOKEZLqMvvevbMPYqMJNfhhXrTKi
 yhWw93Lf69NttdG4Ybq4.sAi9g7PYrwPoFN0_z2B8eMMfHuFuJSg-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic308.consmr.mail.ir2.yahoo.com with HTTP; Mon, 29 Jul 2019 00:21:02 +0000
Date: Mon, 29 Jul 2019 00:00:56 +0000 (UTC)
From: Alice Walton <coyrahadi@yahoo.fr>
Message-ID: <1073106141.2988769.1564358456276@mail.yahoo.com>
Subject: Please listen
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
Reply-To: alicewalton513@yahoo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpJIGFtIGNvbnRhY3RpbmcgeW91IGJ5IHRoZSBXaWxsIG9mIEdvZC4KClBsZWFzZSBsaXN0ZW4g
dG8gbXkgY3J5IGZvciB0aGUgc2FrZSBvZiBteSBsaXR0bGUgY2hpbGQsIGkgYW0gd3JpdGluZyB5
b3Ugbm93IHdpdGggaGVhdnkgdGVhcnMgb24gbXkgZXllcyBwbGVhc2UgZG8gbm90IGlnbm9yZSBt
ZQoKTXkgbmFtZSBpczogRW5nLiBBbGljZSBXYWx0b24sIEkgYW0gYW4gSXRhbGlhbiBidXNpbmVz
cyB3b21hbgpzcGVjaWFsaXplZCBpbiBtaW5pbmcgb2YgcmF3IEdvbGQ7IGJ1dCBub3cgSSBhbSBj
cml0aWNhbGx5CnNpY2sgd2l0aCBlc29waGFnZWFsIGNhbmNlciB3aGljaCBoYXMgZGFtYWdlZCBh
bG1vc3QgYWxsIHRoZSBjZWxscyBpbgpteSBib2R5IHN5c3RlbSBhbmQgdGhlIGRvY3RvciBzYWlk
IHRoYXQgaSB3aWxsIG5vdCBzdXJ2aXZlLgoKTXkgbGF0ZSBodXNiYW5kIGRpZWQgaW4gYW4gYWNj
aWRlbnQgd2l0aCBvdXIgdHdvIGRhdWdodGVycyBmZXcgeWVhcnMKYWdvIGxlYXZpbmcgbWUgd2l0
aCBvdXIgb25seSBzb24gd2hvbSBpcyBqdXN0IDEwIHllYXJzIG9sZCBhbmQgaGUgaXMKbXkgbW9z
dCBjb25jZXJuIG5vdyBhcyBoZSBpcyBzdGlsbCBhIGNoaWxkIGFuZCBkb2VzIG5vdCBrbm93IGFu
eXRoaW5nCmFib3V0IGxpdmUgYW5kIGhhcyBub2JvZHkgdG8gdGFrZSBjYXJlIG9mIGhpbSBpZiBh
bnl0aGluZyBoYXBwZW5zIHRvIG1lIGJlY2F1c2UKSSBhbmQgbXkgbGF0ZSBodXNiYW5kIGRvZXMg
bm90IGhhdmUgYW55IHJlbGF0aXZlcywgd2UgYm90aCBncmV3IHVwIGluCnRoZSBvcnBoYW5hZ2Ug
aG9tZSBhbmQgZ290IG1hcnJpZWQgdW5kZXIgb3JwaGFuYWdlIGFzIG9ycGhhbnMuCgpJIGFtIGFm
cmFpZCBiZWNhdXNlIGlmIGFueXRoaW5nIGhhcHBlbnMgdG8gbWUgbm93IG15IGlubm9jZW50IGNo
aWxkIHdvdWxkIGJlIGxlZnQgYWxvbmUgaW4gdGhpcyB3aWNrZWQgd29ybGQgYW5kCkkgZG8gbm90
IHdhbnQgaGltIHRvIGdyb3cgdXAgaW4gdGhlIG9ycGhhbmFnZSBob21lIGxpa2UgbWUgYW5kIG15
IGxhdGUgaHVzYmFuZCwgSSB3YW50IGhpbSB0byBncm93IHVwCmluIHRoZSBoYW5kcyBvZiBhbiBp
bmRpdmlkdWFsLCBub3QgaW4gdGhlIG9ycGhhbmFnZSBob21lLgoKUGxlYXNlLCBpIGFtIGJlZ2dp
bmcgeW91IGluIHRoZSBuYW1lIG9mIEdvZCB0byBzaW5jZXJlbHkgYWNjZXB0IG15CnByb3Bvc2Fs
OyBsZXQgbWUgaW5zdHJ1Y3QgbXkgbGF0ZSBodXNiYW5kIGJhbmsgdG8gcmVsZWFzZSBoaXMgZnVu
ZCDCoyA0LjUgTUlMTElPTiBQT1VORFMgdG8geW91ciBhY2NvdW50IGluIHlvdXIgY291bnRyeQpp
bW1lZGlhdGVseSwgdGhlbiB5b3UgdGFrZSBteSBzb24gdG8geW91ciBob21lIGFuZCByYWlzZSBo
aW0gYXMgeW91ciBvd24gc29uLgoKUGxlYXNlIGhlbHAgbWUgYW5kIHJlY2VpdmUgdGhpcyBmdW5k
cyBhbmQgaW52ZXN0IGl0IGluIHlvdXIgY291bnRyeSBmb3IgbXkgc29uIHNvIHRoYXQgaGUgd2ls
bCBub3Qgc3VmZmVyIHdoZW4gaGUgZ3JvdyB1cC4KClBsZWFzZSByZXBseSBpbW1lZGlhdGVseSB3
aXRoIHlvdXIgZGF0YSBpZiB5b3UgYWdyZWUgdG8gaGVscCBtZSx5b3UgYXJlIGVudGl0bGUgdG8g
MzAgcGVyY2VudCBvZiB0aGUgdG90YWwgbW9uZXkgZm9yIHlvdXIgZWZmb3J0IGFuZCBpbnZlc3Qg
NzAgcGVyY2VudCBpbiBhbnkgYnVzaW5lc3MKCm9mIHlvdXIgY2hvaWNlIGluIHlvdXIgY291bnRy
eSBmb3IgbXkgc29uLgoKUGxlYXNlIGlmIHlvdSBhcmUgaW50ZXJlc3RlZCB0byBoZWxwIG1lIGRv
IHRoaXMsIGtpbmRseSBnZXQgYmFjayB0byBtZSB3aXRoIHlvdXIgaW5mb3JtYXRpb24gc28gdGhh
dCBpIGNhbiB3cml0ZSBhIGxldHRlciBvZiBjbGFpbSBpbiB5b3VyIG5hbWUgYW5kIHNlbmQgdG8g
dGhlIGJhbmsgYXMgbXkgbGF0ZSBodXNiYW5kJ3MgcmVwcmVzZW50YXRpdmUgYW5kIGJlbmVmaWNp
YXJ5IHRvIHRoZSBmdW5kLgoKUGxlYXNlIGl0cyB2ZXJ5IHVyZ2VudCBiZWNhdXNlIG15IGNvbmRp
dGlvbiBpcyB2ZXJ5IGNyaXRpY2FsIG5vdywgdGhlcmUgaXMgbm8gaG9wZSBvZiBzdXJ2aXZhbAoK
TXkgc3VyZ2VyeSBkYXRlIGlzIHZlcnkgY2xvc2UgYW5kIGkgZG8gbm90IGtub3cgdGhlIG91dGNv
bWUgb2YgbXkgc3VyZ2VyeQoKWW91cnMgU2luY2VyZWx5LApBbGljZSBXYWx0b24KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0
CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZl
cnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
