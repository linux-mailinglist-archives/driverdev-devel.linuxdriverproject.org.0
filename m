Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140272DF67D
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Dec 2020 19:34:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 931A687514;
	Sun, 20 Dec 2020 18:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NxMp-J3buXMX; Sun, 20 Dec 2020 18:34:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A24628741E;
	Sun, 20 Dec 2020 18:34:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98C511BF592
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 18:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 93E968741E
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 18:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 105uIprpw1Xu for <devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 18:34:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BDFA987401
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 18:34:40 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id h205so18430187lfd.5
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 10:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=SVuAJrANiRaA9JvhqiN+Qpg12pt/XXaO5N8Q251ZVXo=;
 b=g0YfBv9Y+Z4Ov6uvvyMmMSO8QAxEodnSGt1Q/xrtSeNlNNvJ6Ei1bxSeMtyZFxaS32
 GMwB4oYAfVNQf3wXSpVheHoh3hMtvQ+WUqfdkBuyyXBmUnV+RW0pU3nTdQfpXMH29oWO
 wHrVouS3H6dIYVB0SEnAXa/QscIJsEHYk+A14ko1+NqCFxl3tbY87Q+4nt70E5RFaUit
 9Avj1QU3w1reztQzSCkIKGo4lWQXodMzg1ETMVsg3/4j1v1iFnPb/KcnypCyrHVFB7kf
 KC7pvLRBNrazpYLxKOXxLwabcFIY8JQIUecHoWVbMfurUqxJhtY3Jsr7ovlkuNPblO76
 1qGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=SVuAJrANiRaA9JvhqiN+Qpg12pt/XXaO5N8Q251ZVXo=;
 b=iMOUdz90LN3Sz/di5yQOWAr00Cm+3U1Q1u5ebrFFnaZpKWsrmX3WF1kc7VGpTkKkf9
 mkd1BYZZ4KKZ8uTl9aqrslQvN95y+2hq28/WPzoqZziHZt3frPmb30rT+6cQzpJRHZHU
 Yglf/RBaAQuOH70R+xl/QZlb7sxZNpLXwTxKhgn8BTOzSsjnvfBfDPUrZhD/HBIl9xhj
 bQHK7lukk3yQUO5scEL86JM6sCNajpllw18Iwo19V+iQLl0dhY7t9nZjyaResBiRcNSG
 2d2CJEPTYqoLiCD1XZf6nu1kFRYKYMFi7A6ucbod9JDZXfyLvZrGBt4KT9eVF6wtdtXq
 B8Yw==
X-Gm-Message-State: AOAM533M854m7JfVrgp5KrJX/TjgPyCpRJhDriIIEODuUJzKJay4EnIG
 Wf8e65280J+/MTgonPpgkEc=
X-Google-Smtp-Source: ABdhPJysdwKJBGLnQ8yhCh1b1/dODKQ+0Vt3EPS6VcrkoitE53cyd/UT9rBF7QWyBhAxqnAW0Mp/1A==
X-Received: by 2002:a2e:240f:: with SMTP id k15mr5679769ljk.506.1608489278886; 
 Sun, 20 Dec 2020 10:34:38 -0800 (PST)
Received: from [192.168.2.145] (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.googlemail.com with ESMTPSA id z26sm1890253ljn.98.2020.12.20.10.34.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 20 Dec 2020 10:34:38 -0800 (PST)
Subject: Re: [PATCH v2 41/48] memory: tegra20-emc: Use
 devm_tegra_core_dev_init_opp_table()
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20201217180638.22748-1-digetx@gmail.com>
 <20201217180638.22748-42-digetx@gmail.com> <20201219110216.GB5323@kozik-lap>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <ea983cb9-c15a-2de2-ba14-35597bdcb2b8@gmail.com>
Date: Sun, 20 Dec 2020 21:34:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201219110216.GB5323@kozik-lap>
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
 Viresh Kumar <vireshk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-tegra@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTkuMTIuMjAyMCAxNDowMiwgS3J6eXN6dG9mIEtvemxvd3NraSDQv9C40YjQtdGCOgo+IE9uIFRo
dSwgRGVjIDE3LCAyMDIwIGF0IDA5OjA2OjMxUE0gKzAzMDAsIERtaXRyeSBPc2lwZW5rbyB3cm90
ZToKPj4gVXNlIGNvbW1vbiBkZXZtX3RlZ3JhX2NvcmVfZGV2X2luaXRfb3BwX3RhYmxlKCkgaGVs
cGVyIGZvciB0aGUgT1BQIHRhYmxlCj4+IGluaXRpYWxpemF0aW9uLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVy
cy9tZW1vcnkvdGVncmEvdGVncmEyMC1lbWMuYyB8IDU3ICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNTMgZGVsZXRpb25z
KC0pCj4gCj4gSWYgdGhlcmUgd2FzIG5vIG1vcmUgVGVncmEgTUMgd29yayBwbGFubmVkLCB0aGlz
IGNvdWxkIGVhc2lseSBnbyB2aWEKPiBUZWdyYSBTb0MgdHJlZS4gSG93ZXZlciBJIGV4cGVjdCBz
dGlsbCB3b3JrIG9mIHlvdXIgaW50ZXJjb25uZWN0Cj4gcGF0Y2hlcywgc28gbWF5YmUgaXQncyBi
ZXR0ZXIgdG8gc3RpY2sgdGhlc2UgaW4gc2FtZSB0cmVlLgoKSSdsbCByZS1zZW5kIHRoZSByZW1h
aW5pbmcgaW50ZXJjb25uZWN0IHBhdGNoZXMgc29vbi4KCj4gSW4gc3VjaCBjYXNlIEkgd291bGQg
bmVlZCBhIHN0YWJsZSB0YWcgd2l0aCB0aGUKPiBkZXZtX3RlZ3JhX2NvcmVfZGV2X2luaXRfb3Bw
X3RhYmxlKCkgaGVscGVyIGZvciBtZW1vcnkgY29udHJvbGxlciB0cmVlLgoKUGVyaGFwcyB3aWxs
IGJlIGJldHRlciB0byBkcm9wIHRoZXNlIG1lbW9yeSBjaGFuZ2VzIGZvciBub3cgZnJvbSB0aGlz
CnNlcmllcyBzaW5jZSB0aGV5IGFyZSBvcHRpb25hbCwgaS5lLiBtZW1vcnkgZHJpdmVycyB3aWxs
IHdvcmsgcHJvcGVybHkKYmVjYXVzZSB2b2x0YWdlIGNoYW5nZXMgYXJlIGRvbmUgYnkgdGhlIE9Q
UCBjb3JlIGFuZCB0aGVzZSBwYXRjaGVzIGp1c3QKcmVwbGFjZSB0aGUgZHVwbGljYXRlZCBjb2Rl
IHdpdGggYSBuZXcgY29tbW9uIGhlbHBlciB3aGljaCBkb2Vzbid0IGFkZApuZXcgZmVhdHVyZXMg
dG8gdGhlIG1lbW9yeSBkcml2ZXJzLiBJdCBzaG91bGQgYmUgZmluZSB0byBnZXQgYmFjayB0bwp0
aGVzZSBtZW1vcnkgcGF0Y2hlcyBvbmNlIGludGVyY29ubmVjdCBwYXRjaHNldCB3aWxsIGJlIGZ1
bGx5IG1lcmdlZC4KSSdsbCB0YWtlIGl0IGludG8gYWNjb3VudCBpbiB2MywgdGhhbmtzLgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
