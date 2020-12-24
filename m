Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAE22E26B9
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 13:16:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 463F686C1D;
	Thu, 24 Dec 2020 12:16:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id faCop4B7k9l7; Thu, 24 Dec 2020 12:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFE18852D9;
	Thu, 24 Dec 2020 12:16:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B846D1BF42C
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 12:16:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFA82203E8
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 12:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5sOaGHVf4-2s for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 12:16:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 829E7203E3
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 12:16:45 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id o17so4393174lfg.4
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 04:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aBLJJg+bzbWbulXzWEitNJ5042asREQNv3cmv9hVKiA=;
 b=JJuUSYdMpRe4neER0nnPgTpAPimiRI1Igwq+UpeDahgwudF1GCXX8kQ9WPifh+7+rE
 ns6OdiZdklf9VJoAnwAIpFuFP4soAjlbIn1wKb3lMOLTswsKwQS6wkrGtvHUUduAhIR7
 xTS0ENwDMGzO1p7nvwvV9whAs0T5WkC6vFtKzk+FV6KWULbCWssULHHLIuTPwqtTLOP7
 50lmQv/rwlVR4UDetNofZ4dJKnmTquUMRtMeLimaCumiMVuw5zIGpcPia8nF/7F4+HeG
 KSaiTeEKZgA/vi4p4i0umtKkbryQkR9R/MCG0HSKYHf5WH0l1k5XdA113l+wSElI4Qyw
 73DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aBLJJg+bzbWbulXzWEitNJ5042asREQNv3cmv9hVKiA=;
 b=QwW2JCneUWlAONOE5ZUljqBqOK/fwYgGprAxXoWvE2tSXw7EU07A/TJvfCnKD87XWu
 w6dthPq/ArTQ0U6exRNJ0HLIpQCR61Jzwhrga90fidlsOhUpBVq4gbv1X0Jp3gngvUI2
 8QpbYaglBwRKYADv4uM+OjRgLlj7n/3fkFnLdm5FtDyguAvS3uJQT33ge7i04xmxP1TQ
 ECxNu9wmtWAclqf5zOEfXt2jxsfbtMqbzedwBjp8Hcvsv7Xqo47ris8skqdgtSCArHG1
 BgeIsT5rD4fbPwDiF1gIxzJFzTeX32DKkewIntZ9NYwfKzq6CBsvgXBoavXR9gDtRkMw
 B/qw==
X-Gm-Message-State: AOAM531N2WYjo0Ohq4Hs1IyJuHN+ogebOXUxNvdnqM6kzLK7oElJJaZs
 fhUpRGDn/vLoAo46Eg+kHzM=
X-Google-Smtp-Source: ABdhPJwqnQyO8QLk/YiNUUylyZroRpd4i08hKXJxtramIT73WqKFf+cxMjJwIeVnmd7ZHuojM/4uMw==
X-Received: by 2002:a19:7ec9:: with SMTP id z192mr13717595lfc.50.1608812203827; 
 Thu, 24 Dec 2020 04:16:43 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id x70sm3283612lfa.224.2020.12.24.04.16.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Dec 2020 04:16:43 -0800 (PST)
Subject: Re: [PATCH v2 15/48] opp: Support set_opp() customization without
 requiring to use regulators
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-16-digetx@gmail.com>
 <20201223060101.v2qihvvgsmpahg24@vireshk-i7>
 <ea025b0f-bb2a-d075-4c8e-45831fa9cd93@gmail.com>
 <20201224041025.mlxsbl2yrxyqt7yh@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <236f9306-97a5-5f17-9689-a6e04c052b7a@gmail.com>
Date: Thu, 24 Dec 2020 15:16:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201224041025.mlxsbl2yrxyqt7yh@vireshk-i7>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 linux-clk@vger.kernel.org, devel@driverdev.osuosl.org,
 Kevin Hilman <khilman@kernel.org>, Nicolas Chauvet <kwizart@gmail.com>,
 Viresh Kumar <vireshk@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjQuMTIuMjAyMCAwNzoxMCwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMjMtMTItMjAs
IDIzOjM4LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IFdlbGwsIHRoZXJlIGlzIG5vICJzYW1l
IHN0cnVjdHVyZSIsIHRoZSBvcHBfdGFibGUtPnNldF9vcHBfZGF0YSBpcyBOVUxMCj4+IHRoZXJl
Lgo+IAo+IFJpZ2h0LCBJIHNhdyB0aGF0IHllc3RlcmRheS4gV2hhdCBJIG1lYW50IHdhcyB0aGF0
IHdlIG5lZWQgdG8gc3RhcnQgYWxsb2NhdGluZwo+IHRoZSBzdHJ1Y3R1cmUgZm9yIHRoaXMgY2Fz
ZSBub3cuCj4gCgpPa2F5LCB0aGF0IHdpbGwgYmUgYSBiaXQgYmlnZ2VyIGNoYW5nZSB0aGFuIHRo
aXMgdjIuIEknbGwgdHJ5IGl0CmltcGxlbWVudCB5b3VycyBzdWdnZXN0aW9uIGluIHRoZSBuZXh0
IHJldmlzaW9uLCB0aGFua3MuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
