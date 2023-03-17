Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3B86BE4CE
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Mar 2023 10:04:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D585B4048F;
	Fri, 17 Mar 2023 09:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D585B4048F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EEUnpeQ_HbFn; Fri, 17 Mar 2023 09:04:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 63DD6403D8;
	Fri, 17 Mar 2023 09:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 63DD6403D8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3CCE1BF2FE
 for <devel@linuxdriverproject.org>; Fri, 17 Mar 2023 09:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD5F582025
 for <devel@linuxdriverproject.org>; Fri, 17 Mar 2023 09:04:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD5F582025
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCIhE33WmeKA for <devel@linuxdriverproject.org>;
 Fri, 17 Mar 2023 09:04:24 +0000 (UTC)
X-Greylist: delayed 00:08:05 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B25D81FFD
Received: from mail.minllyn.pl (mail.minllyn.pl [80.211.129.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B25D81FFD
 for <devel@driverdev.osuosl.org>; Fri, 17 Mar 2023 09:04:24 +0000 (UTC)
Received: by mail.minllyn.pl (Postfix, from userid 1002)
 id CDF3183A34; Fri, 17 Mar 2023 09:55:51 +0100 (CET)
Received: by mail.minllyn.pl for <devel@driverdev.osuosl.org>;
 Fri, 17 Mar 2023 08:55:38 GMT
Message-ID: <20230317084500-0.1.d.12gd.0.bo2msnf45r@minllyn.pl>
Date: Fri, 17 Mar 2023 08:55:38 GMT
From: "Robert Palacz" <robert.palacz@minllyn.pl>
To: <devel@driverdev.osuosl.org>
Subject: Faktoring
X-Mailer: mail.minllyn.pl
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=minllyn.pl; s=mail; 
 t=1679043373; bh=26cHeqbcn1IuuWX7a94P//w9QTZ9htcHwmBZg3/CEjM=;
 h=Date:From:To:Subject:From;
 b=ko0vzXXZMFQpYMcPqnJ5ubD/JseuiYvp+sAPnt2/BRfWkc70g3YNwfa9EHwUR/4Ik
 bOD3xixMJxv6SdugBWhWxOWohqV3fiAnqMDohV+dQJbLGkuOgNYAq/LVKIu+skZ+qT
 939AJNoyW0u/yRz9nBXCwqatQDBe8Sd8uMA4XvZE/Is9/D26fTYVd5YepIERoBSmbB
 IYhj7xLQopUw7KVVVScF1XnJW29E5T5cEWWG1bsI7ZKm83ES1tI7uPQrzQy4TML9RC
 ErFRLs43QienkJX/7kpuk+5TdnCg9hg8tFk1LtcYBbU7/9Dwy3O1ZffkWqhPHXTmGS
 pfkXUB2bp3sCg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=minllyn.pl header.i=@minllyn.pl
 header.a=rsa-sha256 header.s=mail header.b=ko0vzXXZ
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

RHppZcWEIGRvYnJ5LAoKcm96d2HFvGFsaSBQYcWEc3R3byB3eWLDs3IgZmluYW5zb3dhbmlhLCBr
dMOzcmUgc3BlxYJuaSBwb3RyemVieSBmaXJteSwgemFwZXduaWFqxIVjIG5hdHljaG1pYXN0b3d5
IGRvc3TEmXAgZG8gZ290w7N3a2ksIGJleiB6YsSZZG55Y2ggcHJ6ZXN0b2rDs3c/IAoKUHJ6eWdv
dG93YWxpxZtteSByb3p3acSFemFuaWEgZmFrdG9yaW5nb3dlIGRvcGFzb3dhbmUgZG8gUGHFhHN0
d2EgYnJhbsW8eSBpIHdpZWxrb8WbY2kgZmlybXksIGR6acSZa2kga3TDs3J5bSwgbmllIG11c3rE
hSBQYcWEc3R3byBtYXJ0d2nEhyBzacSZIG8gbmlld3lwxYJhY2Fsbm/Fm8SHIGtvbnRyYWhlbnTD
s3csIHBvbmlld2HFvCB0cmFuc2FrY2plIHPEhSB6YWJlenBpZWN6b25lIGkgcG9zaWFkYWrEhSBn
d2FyYW5jasSZIHNwxYJhdHkuIApDaGPEhSBQYcWEc3R3byBwcnplYW5hbGl6b3dhxIcgZG9zdMSZ
cG5lIG9wY2plPwoKClBvemRyYXdpYW0KUm9iZXJ0IFBhbGFjegpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
