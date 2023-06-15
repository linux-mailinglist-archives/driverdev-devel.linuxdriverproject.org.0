Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182FC73158B
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Jun 2023 12:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C07741902;
	Thu, 15 Jun 2023 10:37:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C07741902
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VUSsPVDKkH5B; Thu, 15 Jun 2023 10:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 406AD404FE;
	Thu, 15 Jun 2023 10:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 406AD404FE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B5521BF280
 for <devel@linuxdriverproject.org>; Thu, 15 Jun 2023 10:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 33FC683BD1
 for <devel@linuxdriverproject.org>; Thu, 15 Jun 2023 10:37:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33FC683BD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xZTSeXcyyuty for <devel@linuxdriverproject.org>;
 Thu, 15 Jun 2023 10:37:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8616083BB5
Received: from mail.sitirkam.com (mail.aurorateknoglobal.com [103.126.10.58])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8616083BB5
 for <devel@linuxdriverproject.org>; Thu, 15 Jun 2023 10:37:25 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.sitirkam.com (Postfix) with ESMTP id 7B7134E57C48;
 Thu, 15 Jun 2023 07:47:29 +0700 (WIB)
Received: from mail.sitirkam.com ([127.0.0.1])
 by localhost (mail.sitirkam.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id musfGqZ7-h1o; Thu, 15 Jun 2023 07:47:29 +0700 (WIB)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.sitirkam.com (Postfix) with ESMTP id EA44C4E57C3E;
 Thu, 15 Jun 2023 07:47:08 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.sitirkam.com EA44C4E57C3E
X-Virus-Scanned: amavisd-new at mail.sitirkam.com
Received: from mail.sitirkam.com ([127.0.0.1])
 by localhost (mail.sitirkam.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id oR2Y_ZmrWj9R; Thu, 15 Jun 2023 07:47:08 +0700 (WIB)
Received: from [185.169.4.111] (unknown [185.169.4.111])
 by mail.sitirkam.com (Postfix) with ESMTPSA id 2B1C14E5898B;
 Thu, 15 Jun 2023 07:46:57 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Spende
To: Recipients <admin@sitirkam.com>
From: "Maria-Elisabeth Schaeffler" <admin@sitirkam.com>
Date: Wed, 14 Jun 2023 17:49:05 -0700
Message-Id: <20230615004658.2B1C14E5898B@mail.sitirkam.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sitirkam.com; 
 s=B8AB377C-ED3B-11EA-8736-9248CAEF674E; t=1686790029;
 bh=q7vDHy+gLAr4GKZUDI+hjt8I93kvW09nNmGJORUTyfg=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=pLJ7jn/+ice+fZEci331L78ii49Xn/P9OkvbHZFHXeofwbN+8s1qCm6AKeBgCxcjK
 Lg/kWMouT6PrPywfYMlsxNoRgC0rXDFZCFYRbvHyHXs8R+HZMpoC9DT4uuTIHXyDn7
 CrxaPdt6ZAcnr0vZb2mJwUoT9V1bR81j7uzcPuERwPyQDMl+D3+7hahDqzhrI3P2O+
 jAlDxjTr6/GJugoWCk6YYkMkU8u5qrVgaV7n6vRlsbywDAVjDruiGJhoMRjTe3DGl1
 SMhqidMa8Cg3+FzhrsoSEXarAzoHGGKVOu7of843raRcnCqOFD0eh3kJWP/R8EmLxY
 LR4ryuhGVOO3A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=sitirkam.com header.i=@sitirkam.com
 header.a=rsa-sha256 header.s=B8AB377C-ED3B-11EA-8736-9248CAEF674E
 header.b=pLJ7jn/+
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
Reply-To: schaefflermariaelisabeth1941@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WW91ciBlbWFpbCBhY2NvdW50IGhhcyBiZWVuIHNlbGVjdGVkIGZvciBhIGRvbmF0aW9uIG9mIOKC
rDEsNzAwLDAwMC4gUGxlYXNlIGNvbnRhY3QgbWUgZm9yIG1vcmUgaW5mb3JtYXRpb24uCgpNcnMg
TWFyaWEgRWxpc2FiZXRoIFNjaGFlZmZsZXIKQ0VPIFNDSEFFRkZMRVIuCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
