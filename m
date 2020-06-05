Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E62C71EF9EF
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jun 2020 16:06:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12B9E871DE;
	Fri,  5 Jun 2020 14:06:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S0oMt-sKjEfP; Fri,  5 Jun 2020 14:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4609870B0;
	Fri,  5 Jun 2020 14:06:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6AFB91BF5F4
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 14:05:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 67885883E7
 for <devel@linuxdriverproject.org>; Fri,  5 Jun 2020 14:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kYYJzqMjkkDV for <devel@linuxdriverproject.org>;
 Fri,  5 Jun 2020 14:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75C2D87E3E
 for <devel@driverdev.osuosl.org>; Fri,  5 Jun 2020 14:05:58 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id n23so11898690ljh.7
 for <devel@driverdev.osuosl.org>; Fri, 05 Jun 2020 07:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=E2imZowYcWsqMuYyPOGiSh8Vkqqat7rhLhXVyMR2k0w=;
 b=D/wJ7NyAluy19hD4lOArO9SudJkVEhvukrBzFKZOOidCtGQr8L7Zz5q/SToiDFhpSb
 p5UTbi5gebuWIbN8mFJ80H3cJ+qyXanlpYp6tAHrZnkCfsCkbTwF1pe0eHBrfooqhwlU
 lpiMA4Yehiqnot+x/r0IkPCAWzTBw/N1Xos/ndEeL78XLizAf9w1AGm+gMTtpRc64OZH
 mtHx+WeQepSOZP6of5WOZkXFBatcKPwQuk8aBMzg4/tBJcTerQNqSLHw6ddo540CyJgG
 iM1hrslBg2I3UsbIqpUSRl2OdYaIQLPTJBXg6hK8wDEeQv8sPB2PZpXzEjhIeR0jUM0d
 g8mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=E2imZowYcWsqMuYyPOGiSh8Vkqqat7rhLhXVyMR2k0w=;
 b=WO2QIS0PTljf6vcVf20PnfL5Spl6doC+/ejqKjJigbcjhuNw46bFTOJqNlhOEKwpzT
 cHgzyH8tm2fSPXAD/JSukOUm8tqe+QxQDAZ0GiosgxHhx3MHc+4dfmqSft7eMcnfM07i
 8EKcJZmXeHU8TodqcfIhq5TrMudCqO1j4yYWD84B/QZgdn1IVOBnbgGJylxUb/vwgYsP
 XAs9/0JetE2Ay6Pu/R/rNYmck8XfLwa2jcjki2Sk/Jp5MdiswGHiIarGEDKIo+voRtGk
 SY/HZaA/WKvOgf9VitMl1kgnW+96GtLfChLDIaZkEO2GQUnyMy+a2+6q/FlW6y6MpKID
 S+jw==
X-Gm-Message-State: AOAM530ISPa97oe65L2KY6apKBXE5hUp/qPs+qHxAaiOJEagYHLsX42N
 nmAn6aXbSDn5sfqZLNx+d+o=
X-Google-Smtp-Source: ABdhPJyhDQJ3TrPRcEnQIaSKKUFiV1lqR92HYbBU8YHDoEyM3qNNPqHz0h+AjVhHM+ruxqLhmDTBYg==
X-Received: by 2002:a2e:975a:: with SMTP id f26mr4974996ljj.302.1591365956611; 
 Fri, 05 Jun 2020 07:05:56 -0700 (PDT)
Received: from [192.168.2.145] (109-252-173-94.dynamic.spd-mgts.ru.
 [109.252.173.94])
 by smtp.googlemail.com with ESMTPSA id z133sm980669lfa.41.2020.06.05.07.05.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Jun 2020 07:05:47 -0700 (PDT)
Subject: Re: [PATCH] media: staging: tegra-vde: add missing
 pm_runtime_put_autosuspend
To: Jon Hunter <jonathanh@nvidia.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-media@vger.kernel.org,
 linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
References: <20200602054841.15746-1-navid.emamdoost@gmail.com>
 <7061eb81-c00c-9978-5e4b-f9896c0ffd5e@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <b03670e5-2718-062e-0f53-d596434fe9a4@gmail.com>
Date: Fri, 5 Jun 2020 17:05:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <7061eb81-c00c-9978-5e4b-f9896c0ffd5e@nvidia.com>
Content-Language: en-US
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
Cc: emamd001@umn.edu, kjlu@umn.edu, wu000273@umn.edu, smccaman@umn.edu
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MDUuMDYuMjAyMCAwOTowMCwgSm9uIEh1bnRlciDQv9C40YjQtdGCOgo+IAo+IE9uIDAyLzA2LzIw
MjAgMDY6NDgsIE5hdmlkIEVtYW1kb29zdCB3cm90ZToKPj4gQ2FsbCB0byBwbV9ydW50aW1lX2dl
dF9zeW5jIGluY3JlbWVudHMgY291bnRlciBldmVuIGluIGNhc2Ugb2YKPj4gZmFpbHVyZSBsZWFk
aW5nIHRvIGluY29ycmVjdCByZWYgY291bnQuCj4+IENhbGwgcG1fcnVudGltZV9wdXRfYXV0b3N1
c3BlbmQgaWYgcG1fcnVudGltZV9nZXRfc3luYyBmYWlscy4KPj4KPj4gU2lnbmVkLW9mZi1ieTog
TmF2aWQgRW1hbWRvb3N0IDxuYXZpZC5lbWFtZG9vc3RAZ21haWwuY29tPgo+PiAtLS0KPj4gIGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMgfCA0ICsrKy0KPj4gIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMgYi9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4+IGluZGV4IGQzZTYzNTEyYTc2NS4uNTJjZGQ0YTkxZTkz
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvdGVncmEtdmRlL3ZkZS5jCj4+
ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS90ZWdyYS12ZGUvdmRlLmMKPj4gQEAgLTc3Niw4
ICs3NzYsMTAgQEAgc3RhdGljIGludCB0ZWdyYV92ZGVfaW9jdGxfZGVjb2RlX2gyNjQoc3RydWN0
IHRlZ3JhX3ZkZSAqdmRlLAo+PiAgCQlnb3RvIHJlbGVhc2VfZHBiX2ZyYW1lczsKPj4gIAo+PiAg
CXJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoZGV2KTsKPj4gLQlpZiAocmV0IDwgMCkKPj4gKwlp
ZiAocmV0IDwgMCkgewo+PiArCQlwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZChkZXYpOwo+PiAg
CQlnb3RvIHVubG9jazsKPj4gKwl9Cj4+ICAKPj4gIAkvKgo+PiAgCSAqIFdlIHJlbHkgb24gdGhl
IFZERSByZWdpc3RlcnMgcmVzZXQgdmFsdWUsIG90aGVyd2lzZSBWREUKPiAKPiBQbGVhc2UgdXNl
IHRoZSBwdXQgaW4gdGhlIGVycm9yIHBhdGguCgpUaGlzIGlzIGEgdGhpcmQgdmVyc2lvbiBvZiB0
aGUgcGF0Y2ggWzFdWzJdLgoKWzFdCmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVj
dC9saW51eC10ZWdyYS9wYXRjaC8yMDIwMDUxNDIxMDg0Ny45MjY5LTItZGlnZXR4QGdtYWlsLmNv
bS8KWzJdCmh0dHBzOi8vcGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9saW51eC10ZWdyYS9w
YXRjaC8yMDIwMDUyMDA5NTE0OC4xMDk5NS0xLWRpbmdoYW8ubGl1QHpqdS5lZHUuY24vCgpJJ2Qg
cHJlZmVyIHRvIHN0aWNrIHdpdGggbXkgdmFyaWFudCBvZiB0aGUgcGF0Y2ggWzFdIGJlY2F1c2Ug
aW4gbXkKb3BpbmlvbiBpdCdzIG1vc3Qgc3RyYWlnaHRmb3J3YXJkIHZhcmlhbnQgYW5kIEkgYWN0
dWFsbHkgdGVzdGVkIHRoYXQgaXQKd29ya3MgcHJvcGVybHkuCgpOYXZpZCwgYW55d2F5cyB0aGFu
ayB5b3UgZm9yIHRoZSBwYXRjaC4gTmV4dCB0aW1lIHBsZWFzZSBjaGVjayBpZgpzb21lYm9keSBl
bHNlIGFscmVhZHkgc2VudCBzaW1pbGFyIHBhdGNoZXMgYmVmb3JlIHlvdS4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
