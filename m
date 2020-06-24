Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD1E20774C
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 17:24:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D45B2034A;
	Wed, 24 Jun 2020 15:24:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GNo6dBj5AF40; Wed, 24 Jun 2020 15:24:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B08B9203F7;
	Wed, 24 Jun 2020 15:24:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32F861BF369
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:24:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2F55F86B53
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YOgUWvYHTulL for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 15:24:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E726848A3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 15:24:03 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id t9so1493156lfl.5
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 08:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7ouKIzv9lcqviAIR01eC0zUDPcbdP0WKdUxuCP9SSpw=;
 b=E27hEDFRxtZsQruEYVPTKunSsgJg6aALuxPxpQbSwxDRgiJZXbVdVQJKazLD8M5Wjo
 om0KM0Faci6ftvWbxcquMgWXyDdqtOfBWWlErm0YTPMPTa03xNpBHyYwVibyb2Zzo0M2
 lLUKMh7OyfZEu106pZZ0RNyuGDGS/S4uk2L6AOrXY+Jh1/LOzcsft59VuVdAXRCw8/UI
 tcjTk82W9LuJXvGO7esKypzBLAlzPsyTJqqSq9tTMUXUgl0I+StFKkE/jGlxVfZXHQng
 5tBnnQZgaSockOreNNvEUaLFcdjWc5LD4DodWFz7Xw5DP5j7+DI7/+krFCr1JuaAiZiq
 yuPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7ouKIzv9lcqviAIR01eC0zUDPcbdP0WKdUxuCP9SSpw=;
 b=qzQmeXvFALxE1dPhxPif1CIltE8ObnNKaMYWwtSoYtOOGWCEBk2kbaUfeHG5skSEDA
 s1gDYJWW0zyGCkAIWfdir0ryDVHM12dscmXAHLZgk0MlzCHo1yvBcoyFGegVLO6Iiuzz
 /OgTvzkp6P0ipd/QB9HuYah1jBY66nKWkQlgky2z76EJ2dqmFo41h2QE18ivAuvEcI/p
 DXJiZrL08fDgirKStW1MLEPHKr84PNwKVxXHrNJupM0/5PAptT/0vNuI6ux/pjOsGXs2
 kXhIlwqY2ijc3OheYI/fATv2EFNJ3wwi0suRqEn5y/XSmYuMqvqR27dqGxg4nZxOhwAD
 +9/Q==
X-Gm-Message-State: AOAM5337Xi2YILYyWZB1qwRKgu2GL93byXHXHfeB9bQXopC3S2jJQ0S3
 rzNWQmI0TtrI4ilJMX0HdG0=
X-Google-Smtp-Source: ABdhPJw5CK19plm3sDVgaQZ/FaKkfb0UTJA6gbhs1PnwT7h7YAvOtoMlEmVpoVoZxpLFP0oqUejuXQ==
X-Received: by 2002:ac2:47e7:: with SMTP id b7mr15661708lfp.68.1593012241393; 
 Wed, 24 Jun 2020 08:24:01 -0700 (PDT)
Received: from [192.168.2.145] (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.googlemail.com with ESMTPSA id d20sm5262732lfi.22.2020.06.24.08.24.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Jun 2020 08:24:00 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] Tegra Video Decoder driver power management
 corrections
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20200624150847.22672-1-digetx@gmail.com>
 <90323aa6-38b5-0a45-69a7-ccf380690a78@xs4all.nl>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <23cbaa18-9461-8f72-3d43-aa14cd0c1095@gmail.com>
Date: Wed, 24 Jun 2020 18:23:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <90323aa6-38b5-0a45-69a7-ccf380690a78@xs4all.nl>
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjQuMDYuMjAyMCAxODoxNiwgSGFucyBWZXJrdWlsINC/0LjRiNC10YI6Cj4gT24gMjQvMDYvMjAy
MCAxNzowOCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiBIZWxsbywKPj4KPj4gVGhpcyBzbWFs
bCBzZXJpZXMgYWRkcmVzc2VzIGEgUnVudGltZSBQTSBpc3N1ZSB0aGF0IHdhcyBkaXNjb3ZlcmVk
IGR1cmluZwo+PiBvZiBUZWdyYSBWSSBkcml2ZXIgcmV2aWV3aW5nIGJ5IGJhbGFuY2luZyBSUE0g
dXNhZ2UgY291bnQgb24gUlBNIHJlc3VtZQo+PiBmYWlsdXJlLiBTZWNvbmRseSBpdCBmaXhlcyBy
ZWJvb3Qgb24gc29tZSBUZWdyYSBkZXZpY2VzIGR1ZSB0byBib290bG9hZGVyCj4+IGV4cGVjdGlu
ZyBWREUgcG93ZXIgcGFydGl0aW9uIHRvIGJlIE9OIGF0IHRoZSBib290IHRpbWUsIHdoaWNoIHdh
c24ndAo+PiBoYXBwZW5pbmcgaW4gY2FzZSBvZiBhIHdhcm0gcmUtYm9vdGluZyAoaS5lLiBieSBQ
TUMgcmVzZXR0aW5nKS4KPiAKPiBDYW4geW91IHJlYmFzZSB0aGlzIG9uIHRvcCBvZiB0aGUgbWVk
aWFfdHJlZSBtYXN0ZXIgYnJhbmNoPyBJIHRoaW5rIGEgdmFyaWFudAo+IG9mIHBhdGNoIDEgaGFz
IGFscmVhZHkgYmVlbiBhcHBsaWVkLiBJIGZvdW5kIGEgbWFpbCB0b2RheSB3aGVyZSB5b3UgbWVu
dGlvbmVkCj4gdGhhdCB5b3UgcHJlZmVycmVkIHlvdXIgdmVyc2lvbiAoaXQgbG9va3MgbGlrZSBJ
IG1pc3NlZCB0aGF0KSBzbyB5b3UnbGwgbmVlZCB0bwo+IHJld29yayBwYXRjaCAxLgoKSGVsbG8g
SGFucywKCkknbGwgdGFrZSBhIGxvb2sgYXQgd2hhdCBwYXRjaGVzIGhhcyBiZWVuIGFwcGxpZWQs
IG15IGJhZCBmb3Igc2VuZGluZwp0aGUgdjIgdG9vIGxhdGUuIFRoYW5rIHlvdSBmb3IgdGhlIGhl
YWRzIHVwIQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
