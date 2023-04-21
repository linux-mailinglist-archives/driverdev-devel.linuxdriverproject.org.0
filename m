Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9713B6EA4EA
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Apr 2023 09:36:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47894427CD;
	Fri, 21 Apr 2023 07:36:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47894427CD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c-jp7LhOdHmo; Fri, 21 Apr 2023 07:36:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECA0F427B3;
	Fri, 21 Apr 2023 07:36:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECA0F427B3
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2026D1C2745
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Apr 2023 07:36:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC2CF84089
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Apr 2023 07:36:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC2CF84089
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ywrLeAdfD2Is
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Apr 2023 07:36:35 +0000 (UTC)
X-Greylist: delayed 00:05:22 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D46078407B
Received: from mail.tipvortexbiz.com (mail.tipvortexbiz.com [51.254.102.79])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D46078407B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Apr 2023 07:36:34 +0000 (UTC)
Received: by mail.tipvortexbiz.com (Postfix, from userid 1002)
 id 19D6445979; Fri, 21 Apr 2023 07:31:08 +0000 (UTC)
Received: by mail.tipvortexbiz.com for
 <driverdev-devel@linuxdriverproject.org>; Fri, 21 Apr 2023 07:31:06 GMT
Message-ID: <20230421064500-0.1.1b.2a5u.0.5qyll34ovs@tipvortexbiz.com>
Date: Fri, 21 Apr 2023 07:31:06 GMT
From: "Victor Pollard" <victor.pollard@tipvortexbiz.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: Wake up - Audit time
X-Mailer: mail.tipvortexbiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=tipvortexbiz.com; s=mail; t=1682062269;
 bh=P1Han34balTJAB06sltOuaQxWoVYtmotA0/1aw855g4=;
 h=Date:From:To:Subject:From;
 b=XwOEc4RkjJzH5nXbMzIN4UgqUVQEvLqa+pEhSZg2UtRJA/cEwh0sE0v5+E38qB4il
 nz8Cjm9FLJv/yXp4Na/9UeH3NR8NtloXMeExqob/HRfc2K/n+b4VwOlOrm6oFPbb/7
 LHrDvJS+ZN76Or6oVKmowMf8bAIi6q7apxehICxDHJWv8YsYyUUQGDH8dF2OPFwrpm
 4tDbvtbULxujWAfVdvh7dgN9zb5YtJuwb+xS7sEDrK1892CY8HEl5Dr5wdsj0wHg/N
 0yNtiRFdCQ48T7Qwd13NAkQo8xOdCBd5tXEKryaa6iezbrenn6kA1byBjtiWwGSwVV
 2G7eUtiDcjB2A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=tipvortexbiz.com header.i=@tipvortexbiz.com
 header.a=rsa-sha256 header.s=mail header.b=XwOEc4Rk
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

R29vZCBtb3JuaW5nLAoKd2UgcHJvdmlkZSBhIHNvbHV0aW9uIHRoYXQgc2lnbmlmaWNhbnRseSBz
aG9ydGVucyB0aGUgYXVkaXQgdGltZSwgZW5hYmxlcyBzdGFuZGFyZHMgY29udHJvbCBhbmQgbm9u
LWNvbXBsaWFuY2UgcmVwb3J0aW5nOgoK4pePIEF1ZGl0cyAtIHRvIGNoZWNrIHF1YWxpdHkgb3Ig
cHJvY2VzcyBzdGFuZGFyZHMgKElTTywgNVMsIExQQSkK4pePIFNjaGVkdWxlciAtIGFsbCB3b3Jr
IGNhbiBiZSBzY2hlZHVsZWQgYW5kIGxpbmtlZCB0byB0aGUgbm90aWZpY2F0aW9uIHN5c3RlbQri
l48gQ2hlY2tsaXN0cyAtIGZvciBjYXJyeWluZyBvdXQgd29yayAicG9pbnQgYnkgcG9pbnQiIHdp
dGggYSBkZXNjcmlwdGlvbiBpbGx1c3RyYXRlZCB3aXRoIGEgcGhvdG8gb3IgdmlkZW8K4pePIE5v
bi1jb25mb3JtYW5jZXMgLSBpbW1lZGlhdGVseSByZXBvcnQgbm9uLWNvbmZvcm1hbmNlcyBhbmQg
c2VuZCB0aGVtIHRvIHJlc3BvbnNpYmxlIHBlcnNvbnMK4pePIFRlc3RzIC0gdG8gY2hlY2sga25v
d2xlZGdlIGFmdGVyIHRyYWluaW5nIG9yIChjdXN0b21lcidzKSBleHBlY3RhdGlvbnMK4pePIFN1
bW1hcnkgb2YgUmVzdWx0cyBhbmQgUmVwb3J0cyAtIHByZXNlbnRlZCBvbiBkYXNoYm9hcmRzCgpB
cmUgeW91IG9wZW4gdG8gYSBjb252ZXJzYXRpb24gYWJvdXQgdXNpbmcgc3VjaCBhIHRvb2wgaW4g
eW91ciBjb21wYW55PwoKClJlZ2FyZHMKVmljdG9yIFBvbGxhcmQKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
