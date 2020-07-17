Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A80C7223ACC
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 13:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3217386364;
	Fri, 17 Jul 2020 11:49:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zdZ2QOfavdmV; Fri, 17 Jul 2020 11:49:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7299D86365;
	Fri, 17 Jul 2020 11:49:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 48C961BF287
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 11:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4524A88412
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 11:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2GxnuE5LjmES for <devel@linuxdriverproject.org>;
 Fri, 17 Jul 2020 11:49:28 +0000 (UTC)
X-Greylist: delayed 00:37:31 by SQLgrey-1.7.6
Received: from whuk3.redbackinternet.net (whuk3.redbackinternet.net
 [109.203.107.222])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A46F988411
 for <devel@linuxdriverproject.org>; Fri, 17 Jul 2020 11:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=firebladeautomationsystems.co.uk; s=default; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vi1Dg1tOYsrHMOJ14/iXqfmm1zLY0BlOQd2iHI6Is20=; b=MyrxplYFJvMwQ484d+7pjyDOd
 Ry3pzYBwjLzvzCAfFwKW3AFz8PVwGDV2ND0AtmamGCkVVvkoVYpoxgzcigck50suyZU9hRzrp4zOE
 XBVha9Gn+abt21kCAPMVzS37E664mPv1f0j+xhvrXDu4+AKQJRNM+Jb8fWS7POqM+ob8PBS087SNB
 xPV6eGEgok0iBhIQ2Mft1JkpITnRR94lzIUroBx7+d3dB63Kca/vE2eMm4up0hxn2FBbn/3xwIFf1
 ed6W2s3tb7XYVtaaViynpa7iB6ntzcISW6z1MoijXX1OiSeNQIpOehRmGtyxBBhbe7fcQOylcF7Jq
 b2IuSU7zQ==;
Received: from 24.54.187.81.in-addr.arpa ([81.187.54.24]:1411
 helo=[192.168.1.40])
 by whuk3.redbackinternet.net with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <c.tyerman@firebladeautomationsystems.co.uk>)
 id 1jwOHP-006O47-MG
 for devel@linuxdriverproject.org; Fri, 17 Jul 2020 12:11:52 +0100
From: christopher tyerman <c.tyerman@firebladeautomationsystems.co.uk>
Subject: linux/drivers/staging/pi433/
To: devel@linuxdriverproject.org
Autocrypt: addr=c.tyerman@firebladeautomationsystems.co.uk;
 prefer-encrypt=mutual; keydata=
 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
Organization: Fireblade Automation Systems
Message-ID: <3a130eff-8a46-f12e-0848-7d086b875567@firebladeautomationsystems.co.uk>
Date: Fri, 17 Jul 2020 12:11:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
Content-Language: en-GB
X-OutGoing-Spam-Status: No, score=-0.1
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - whuk3.redbackinternet.net
X-AntiAbuse: Original Domain - linuxdriverproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - firebladeautomationsystems.co.uk
X-Get-Message-Sender-Via: whuk3.redbackinternet.net: authenticated_id:
 c.tyerman@firebladeautomationsystems.co.uk
X-Authenticated-Sender: whuk3.redbackinternet.net: c.tyerman@firebladeautomationsystems.co.uk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

aGVsbG8KCkltIGxvb2tpbmcgZm9yIGluZm9ybWF0aW9uIG9uIHRoZSBwaTQzMyBkcml2ZXIuIFdo
byBpcyBjdXJyZW50bHkKbWFpbnRhaW5pbmcgdGhlIGRyaXZlcj8gYXMgdGhlIG9yaWdpbmFsIGF1
dGhvciBhcHBlYXJzIG5vdCB0byBoYXZlIG1hZGUKYW55IGFsdGVyYXRpb25zIHNpbmNlIHRoZSBv
cmlnaW5hbCBjb21taXQsIGFuZCBsaW5rcyBhcmUgbm8gbG9uZ2VyIHZhbGlkLgoKSW0gbG9va2lu
ZyB0byBkZXRlcm1pbmUgd2hhdCB3b3VsZCBiZSBuZWNlc3NhcnkgdG8gY29uZmlybS9pbXBsZW1l
bnTCoApmdW5jdGlvbmFsaXR5IHVzaW5nIHRoZSBSRk02OUhDVyBhbmQsIGluaXRpYWxseSwgbW9y
ZSBzcGVjaWZpY2FsbHkgdGhlClNwYXJrRnVuIFJGTTY5IEJyZWFrb3V0KCBodHRwczovL3d3dy5z
cGFya2Z1bi5jb20vcHJvZHVjdHMvMTI4MjMpLgoKQXMgYSBzaWRlIHF1ZXN0aW9uIGNhbiB5b3Ug
dGVsbCB3aGF0IG9yIHdoZXJlIGkgY2FuIGZpbmQgaW5mb3JtYXRpb24gb24KZHJpdmVyIG5hbWlu
ZyBjb252ZW50aW9ucz8gYXMgdGhlIHBpNDMzIGRyaXZlciB0byBtZSBsb29rcyBsaWtlIGl0CnNo
b3VsZCByZWFsbHkgYmUgbmFtZWQgYWZ0ZXIgdGhlIFJGTTY5IHNlcmllcyBvZiBjaGlwcy9tb2R1
bGVzIHJhdGhlcgp0aGFuIGEgc3BlY2lmaWMgUENCIGZvciB0aGF0IG1vZHVsZSB3aGljaCBhcHBl
YXJzIHRvIG5vdCBiZSBhdmFpbGFibGUKYW5kIG11bHRpcGxlIGFsdGVybmF0aXZlcyBleGlzdCBm
b3IuCgpUaGFuayB5b3UgZm9yIHlvdXIgdGltZS4KCsKgwqDCoCBDaHJpc3RvcGhlciB0eWVybWFu
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
