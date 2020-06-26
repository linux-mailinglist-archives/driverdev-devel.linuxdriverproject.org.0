Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE14A20A9CE
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 02:17:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70509891D8;
	Fri, 26 Jun 2020 00:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zgf+f1I9NdYd; Fri, 26 Jun 2020 00:17:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFEFD87DDB;
	Fri, 26 Jun 2020 00:17:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A50681BF9B6
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 00:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A170687DDB
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 00:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KMbWzoLrJf-T for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 00:17:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD92B87D9C
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 00:17:25 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id g139so4185428lfd.10
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 17:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=KK6PtY8pcNXP5gzO5UgZaFW1H+cyyPPgMqvwAKW3sW8=;
 b=DLDmezHNEgW1lPl4CVB6KIX1vPcwpTxUVTM8PWvkbEDV0UunB4q9ZHgWkv6bmRxAcm
 qs+Dk3PuIFz6zX2IiC8la9qDO4rTowUU0wkMmpzK7fT6DDeFat8Dqy/iRRWQp9kaS1gp
 SBpyRgRS3iGiKaey6Ta77m/LqxIasW/jX3GMPH2j2rlnMNJr7ddz7x/tFGy1lwzuosS/
 uxKXrpZ08sjUkCy++4BCOflkY8gJPzX8GWXhw/vtE+WYT1lG81ojrQal5p6EdwO2iHOt
 NCGHd8US2Ki/CkqgYPAJicC8HMkbeBW9gJjvh3xQEAqab5WwxBDDcEnK2r69ErVcf+vS
 odXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=KK6PtY8pcNXP5gzO5UgZaFW1H+cyyPPgMqvwAKW3sW8=;
 b=HVoLndxKJ0ggsXKm04G93ZfpL8U/XiE+ZnQr+IDAFm7LcNEZKo2F4psgSqR6Xww0eF
 tzKTZKTk8Araj8LY8aRsYRstRvTIX1VAZDQ4K+w6Lw/jQ0Th1JUyqkOd5Zo1gnKkzmW1
 vTX3WULN6ByBs6C4A/SEBtAoec9P0K8h21Syz3JE8VaQalOJU16dUQp1HuVlmYxlBITT
 wg8PeMnbWeksjsKsB8TY+CUtPF9YusN72Mvd+VATIF2H7x9NtsmyCMnYyBcYAkc7UOBx
 oSOZWOk8Q6xbJn6Y5xZTtDxLt9uK0SRwl1f6D6GjzbbhIr5bBhuYXVlBWKFEcIxxn56Z
 1oJA==
X-Gm-Message-State: AOAM53318Y6kT/7C2WGsaaoPouFjQT6KfljGdvBygJjQt3VICNqy06/b
 RQBnMhHoYvty+lCWpACpqK0=
X-Google-Smtp-Source: ABdhPJzauRiZb4C+F6R6DOWxZgKYoDplYwoRTe7M+AlkO2GC5Qkor2GNAAJoT96EMiuI02kB1VpN3g==
X-Received: by 2002:a19:911:: with SMTP id 17mr319525lfj.80.1593130643810;
 Thu, 25 Jun 2020 17:17:23 -0700 (PDT)
Received: from [192.168.2.145] (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.googlemail.com with ESMTPSA id y25sm1177397ljc.29.2020.06.25.17.17.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Jun 2020 17:17:22 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] Tegra Video Decoder driver power management
 corrections
From: Dmitry Osipenko <digetx@gmail.com>
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20200624150847.22672-1-digetx@gmail.com>
 <90323aa6-38b5-0a45-69a7-ccf380690a78@xs4all.nl>
 <23cbaa18-9461-8f72-3d43-aa14cd0c1095@gmail.com>
Message-ID: <0e14df05-8299-52d6-df8f-0dd476f4109d@gmail.com>
Date: Fri, 26 Jun 2020 03:17:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <23cbaa18-9461-8f72-3d43-aa14cd0c1095@gmail.com>
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

MjQuMDYuMjAyMCAxODoyMywgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMjQuMDYuMjAy
MCAxODoxNiwgSGFucyBWZXJrdWlsINC/0LjRiNC10YI6Cj4+IE9uIDI0LzA2LzIwMjAgMTc6MDgs
IERtaXRyeSBPc2lwZW5rbyB3cm90ZToKPj4+IEhlbGxvLAo+Pj4KPj4+IFRoaXMgc21hbGwgc2Vy
aWVzIGFkZHJlc3NlcyBhIFJ1bnRpbWUgUE0gaXNzdWUgdGhhdCB3YXMgZGlzY292ZXJlZCBkdXJp
bmcKPj4+IG9mIFRlZ3JhIFZJIGRyaXZlciByZXZpZXdpbmcgYnkgYmFsYW5jaW5nIFJQTSB1c2Fn
ZSBjb3VudCBvbiBSUE0gcmVzdW1lCj4+PiBmYWlsdXJlLiBTZWNvbmRseSBpdCBmaXhlcyByZWJv
b3Qgb24gc29tZSBUZWdyYSBkZXZpY2VzIGR1ZSB0byBib290bG9hZGVyCj4+PiBleHBlY3Rpbmcg
VkRFIHBvd2VyIHBhcnRpdGlvbiB0byBiZSBPTiBhdCB0aGUgYm9vdCB0aW1lLCB3aGljaCB3YXNu
J3QKPj4+IGhhcHBlbmluZyBpbiBjYXNlIG9mIGEgd2FybSByZS1ib290aW5nIChpLmUuIGJ5IFBN
QyByZXNldHRpbmcpLgo+Pgo+PiBDYW4geW91IHJlYmFzZSB0aGlzIG9uIHRvcCBvZiB0aGUgbWVk
aWFfdHJlZSBtYXN0ZXIgYnJhbmNoPyBJIHRoaW5rIGEgdmFyaWFudAo+PiBvZiBwYXRjaCAxIGhh
cyBhbHJlYWR5IGJlZW4gYXBwbGllZC4gSSBmb3VuZCBhIG1haWwgdG9kYXkgd2hlcmUgeW91IG1l
bnRpb25lZAo+PiB0aGF0IHlvdSBwcmVmZXJyZWQgeW91ciB2ZXJzaW9uIChpdCBsb29rcyBsaWtl
IEkgbWlzc2VkIHRoYXQpIHNvIHlvdSdsbCBuZWVkIHRvCj4+IHJld29yayBwYXRjaCAxLgo+IAo+
IEhlbGxvIEhhbnMsCj4gCj4gSSdsbCB0YWtlIGEgbG9vayBhdCB3aGF0IHBhdGNoZXMgaGFzIGJl
ZW4gYXBwbGllZCwgbXkgYmFkIGZvciBzZW5kaW5nCj4gdGhlIHYyIHRvbyBsYXRlLiBUaGFuayB5
b3UgZm9yIHRoZSBoZWFkcyB1cCEKPiAKCkkgdGVzdGVkIHRoZSBhbHJlYWR5LWFwcGxpZWQgdmFy
aWFudCBvZiB0aGUgcGF0Y2ggMSBhbmQgaXQgaGFzIHRoZSBzYW1lCmJlaGF2aW91ciBhcyBteSB2
YXJpYW50LCBzbyBpdCdzIG9rYXkuCgpXb3VsZCB5b3Ugd2FudCBtZSB0byBzZW5kIGEgdjMgd2l0
aG91dCB0aGUgY29uZmxpY3RpbmcgcGF0Y2ggMSBvciB5b3UKY291bGQgYXBwbHkgdGhlIHBhdGNo
ZXMgMi00IGZyb20gdGhpcyBzZXJpZXM/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
