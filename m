Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3CF36EAA1
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 14:38:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EE8E40E48;
	Thu, 29 Apr 2021 12:38:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xgBam430KnfT; Thu, 29 Apr 2021 12:38:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CDB3402C5;
	Thu, 29 Apr 2021 12:38:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F09E11BF312
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 12:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFACE606B0
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 12:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OyCURvhBqDi0 for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 12:38:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A8D06069F
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 12:38:20 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id s9so18318137ljj.6
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 05:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C9ADd+O1J2g7WPah5TPp1y5aPWH188p57AR71wN8M7Y=;
 b=jNb3LRNDZRY9dtWQ93oZg3Us255+OUEcb5r+MjK5sgkqGm7K9ak2patahQ6FZcQ4SG
 28gHOMaQhLQK4D5cZpgiMVK1xT5XaPCU5pkFtSOVIMAZQ9BBiOgPnc/cXivzWcDrNz2i
 H9506pQwYfGU9WiNOhZ3cIL0FTWvHooUSMBpK5u6BPyF2ggTLCQG09bdSv95I1JnkX3g
 nh3pI0amvi5YoTJBsug51S7QoV+mrkdy5sDhpRttOD/vmKonfuRbaUBS+GKkabP6a7Az
 uTEygRG6Qdg7dwzw0ebu4kUpHrNm2Jc9NyFuOLXfFVRJyurvbkzpJUP+ZLKUZztvchJ2
 eX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C9ADd+O1J2g7WPah5TPp1y5aPWH188p57AR71wN8M7Y=;
 b=gRnLyGumztQ0wK1RZVpneOz4QoWYZe68E+eAVL7h6Cgbm98WrFiOrXO3dP50/gUKcb
 vueFHMU+LXezqFNvYS8Raq1pN2oxyQzNqrccuSmh6Y7mUQnEM415Llrqye4+JIMBvGSZ
 /p+QhW6+FRtNx4LMoShCK+9SXYvjld/oeIY0GN3qRM/xUoyXx22RkAeXjP9SBPYcQsSc
 IV/fNzvReTm2xYa1pRlAnscM1aB/27Qy6jGWSnR+iCTdxbiZcBVh8pr224CL954kOzrr
 bCa2e1K55+f+dbbU5lDfrxSlVUUNyveiXhIRsVFNcpbD8XQYUHrfDGb7aitX7tCUtaXG
 5O+A==
X-Gm-Message-State: AOAM5333nsGId2uII5DtxSGg+My/9lPQ0LOa8BZlXiwrwvez9WHuCJ6x
 xGEg580OS6vrsML207BKhDg=
X-Google-Smtp-Source: ABdhPJzTvng8yQNg4q9VfyFfl15qNbeKD7GZ3dV96aB9VC37IqAWamJguU8SXFBqPTn3oiUW9HRVMA==
X-Received: by 2002:a2e:140b:: with SMTP id u11mr24386345ljd.125.1619699898040; 
 Thu, 29 Apr 2021 05:38:18 -0700 (PDT)
Received: from [192.168.2.145] (109-252-193-102.dynamic.spd-mgts.ru.
 [109.252.193.102])
 by smtp.googlemail.com with ESMTPSA id v130sm515026lfa.262.2021.04.29.05.38.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Apr 2021 05:38:17 -0700 (PDT)
Subject: Re: [PATCH v4 25/79] staging: media: tegra-vde: use
 pm_runtime_resume_and_get()
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <bc2b9048d4ad510eec97988ce8f3fd0d2bb26f39.1619621413.git.mchehab+huawei@kernel.org>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <ec7048b0-bd5e-82e5-08fb-b51d633105ff@gmail.com>
Date: Thu, 29 Apr 2021 15:38:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <bc2b9048d4ad510eec97988ce8f3fd0d2bb26f39.1619621413.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linuxarm@huawei.com, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjguMDQuMjAyMSAxNzo1MSwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiINC/0LjRiNC10YI6Cj4gQEAg
LTEwNjksMTEgKzEwNzEsMTcgQEAgc3RhdGljIGludCB0ZWdyYV92ZGVfcHJvYmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKPiAgCSAqIHBvd2VyLWN5Y2xlIGl0IGluIG9yZGVyIHRvIHB1
dCBoYXJkd2FyZSBpbnRvIGEgcHJlZGljdGFibGUgbG93ZXIKPiAgCSAqIHBvd2VyIHN0YXRlLgo+
ICAJICovCj4gLQlwbV9ydW50aW1lX2dldF9zeW5jKGRldik7Cj4gKwlpZiAocG1fcnVudGltZV9y
ZXN1bWVfYW5kX2dldChkZXYpIDwgMCkKPiArCQlnb3RvIGVycl9wbV9ydW50aW1lOwo+ICsKPiAg
CXBtX3J1bnRpbWVfcHV0KGRldik7Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gIAo+ICtlcnJfcG1fcnVu
dGltZToKPiArCXBtX3J1bnRpbWVfZG9udF91c2VfYXV0b3N1c3BlbmQoZGV2KTsKPiArCXBtX3J1
bnRpbWVfZGlzYWJsZShkZXYpOwo+ICsKPiAgZXJyX2RlaW5pdF9pb21tdToKPiAgCXRlZ3JhX3Zk
ZV9pb21tdV9kZWluaXQodmRlKTsKClRoaXMgaXMgaW5jb3JyZWN0IGVycm9yIHVud2luZGluZywg
dGhlIG1pc2NkZXYgaXNuJ3QgdW5yZWdpc3RlcmVkLgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2
ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFp
bG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
