Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D5A2B1DA5
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 15:46:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 13AC2875A1;
	Fri, 13 Nov 2020 14:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ywbVUVu32fzU; Fri, 13 Nov 2020 14:46:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A5E38751E;
	Fri, 13 Nov 2020 14:46:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 381E91BF3A0
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 14:46:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33FF7878C9
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 14:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hQDcIDFrIoOO for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 14:46:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
 [209.85.217.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 70AEA878C3
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 14:46:21 +0000 (UTC)
Received: by mail-vs1-f65.google.com with SMTP id y73so5322464vsc.5
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 06:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Aa2pPBMOldZH+yQGH0UrveON65rZ08/cb06MQFHGa0E=;
 b=oI7Irk60nS8p8IJ9aebTfBT8tKh0VFGTFn4N+jHvPSrvutUGz4HDN9F2eXGWUFLUJO
 pztkL1zvJJMqmmqAU4axiDuUUDb7ZZEfZv/0TZRBLjwcw3/kbFA/Hx96JgrITvvr02pZ
 P9ohzUknb4wDMFPoki9mO18MI2KcxcBOr1dFLBdisyT0QQlXZ092Oz52zVXzS4AIl6nm
 U8S/pCXL5v33Tp7vs3/soInXrThDoA5cbxXaCLXchnNuLPv28h5iBteaaK6ficGI1j82
 XTk7m3rfU//IdaFvmbs97w3+GVYDzQv+iWKbaHXieTVM3M0QznSjPWGv6+xYuZCuLvZr
 7YfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Aa2pPBMOldZH+yQGH0UrveON65rZ08/cb06MQFHGa0E=;
 b=cUYY0ETu1Pkv4fQod6tGjLVPSCXTK8Fy/c4P88KtoRraSa8b3ar7SYhKtVlW6XybUO
 7P3I7yigtt27EJ4Pybku48LTl/uM73DdxmeVLi4sfGDfC+ZE2aMgj7vYuusnhvA6yqv2
 JwUD0GQ2wC0s7mjT9PtaexTpaSdH0+zXwIEKeyTqAywZMX+93I0OIHTBU7jynZpRANOS
 jEWgmfQL5xh8WgGVgyH5+/sA8r+8OWaTgPohJEUJGYGMeWN+q8krpI9nTwKlJmsMC0b3
 seVHEC8tSV2uce2H5iex9z08/crSWiP7EcfQ5rkqJoOueaZ50XZiCX4NvNDSfriY7cae
 zeTA==
X-Gm-Message-State: AOAM532sXhmy5W/CeTRbhQ/AAxuaf7QCTRj1U3zYWv2jk3z7Qc6miRgp
 m/8JcgoeI6rChYfcA4f/UoLEzQ8TtcwwI9ygEOzsLw==
X-Google-Smtp-Source: ABdhPJwkbgKSdaTWhgIsxWjShz+Kw+ub2606C3A/AwjkR07HCOjuCnqip2AUmLV/UBcfKhNInvgSpQVBCTAIPmGnX5w=
X-Received: by 2002:a67:3256:: with SMTP id y83mr1567875vsy.48.1605278780301; 
 Fri, 13 Nov 2020 06:46:20 -0800 (PST)
MIME-Version: 1.0
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
 <2716c195-083a-112f-f1e5-2f6b7152a4b5@gmail.com>
 <CAPDyKFqUMsH9dCZ=OYqfdLt==+-8NjK9n=S5jGGNXZu6Y9q=2w@mail.gmail.com>
 <1f7e90c4-6134-2e2b-4869-5afbda18ead3@gmail.com>
 <20201112204358.GA1027187@ulmo>
 <25942da9-b527-c0aa-5403-53c9cc34ad93@gmail.com>
In-Reply-To: <25942da9-b527-c0aa-5403-53c9cc34ad93@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 13 Nov 2020 15:45:43 +0100
Message-ID: <CAPDyKFomk7mw7-wpZFPOfT27CEXuCbzRiBoicH5-k7QF_pphVw@mail.gmail.com>
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Dmitry Osipenko <digetx@gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, DTML <devicetree@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCAxMiBOb3YgMjAyMCBhdCAyMzoxNCwgRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21h
aWwuY29tPiB3cm90ZToKPgo+IDEyLjExLjIwMjAgMjM6NDMsIFRoaWVycnkgUmVkaW5nINC/0LjR
iNC10YI6Cj4gPj4gVGhlIGRpZmZlcmVuY2UgaW4gY29tcGFyaXNvbiB0byB1c2luZyB2b2x0YWdl
IHJlZ3VsYXRvciBkaXJlY3RseSBpcwo+ID4+IG1pbmltYWwsIGJhc2ljYWxseSB0aGUgY29yZS1z
dXBwbHkgcGhhbmRsZSBpcyByZXBsYWNlZCBpcyByZXBsYWNlZCB3aXRoCj4gPj4gYSBwb3dlci1k
b21haW4gcGhhbmRsZSBpbiBhIGRldmljZSB0cmVlLgo+ID4gVGhlc2UgbmV3IHBvd2VyLWRvbWFp
biBoYW5kbGVzIHdvdWxkIGhhdmUgdG8gYmUgYWRkZWQgdG8gZGV2aWNlcyB0aGF0Cj4gPiBwb3Rl
bnRpYWxseSBhbHJlYWR5IGhhdmUgYSBwb3dlci1kb21haW4gaGFuZGxlLCByaWdodD8gSXNuJ3Qg
dGhhdCBnb2luZwo+ID4gdG8gY2F1c2UgaXNzdWVzPyBJIHZhZ3VlbHkgcmVjYWxsIHRoYXQgd2Ug
YWxyZWFkeSBoYXZlIG11bHRpcGxlIHBvd2VyCj4gPiBkb21haW5zIGZvciB0aGUgWFVTQiBjb250
cm9sbGVyIGFuZCB3ZSBoYXZlIHRvIGp1bXAgdGhyb3VnaCBleHRyYSBob29wcwo+ID4gdG8gbWFr
ZSB0aGF0IHdvcmsuCj4KPiBJIG1vZGVsZWQgdGhlIGNvcmUgUEQgYXMgYSBwYXJlbnQgb2YgdGhl
IFBNQyBzdWItZG9tYWlucywgd2hpY2gKPiBwcmVzdW1hYmx5IGlzIGEgY29ycmVjdCB3YXkgdG8g
cmVwcmVzZW50IHRoZSBkb21haW5zIHRvcG9sb2d5Lgo+Cj4gaHR0cHM6Ly9naXN0LmdpdGh1Yi5j
b20vZGlnZXR4L2RmZDkyYzdmN2UwYWE2Y2VmMjA0MDNjNDI5ODA4OGQ3CgpUaGF0IGNvdWxkIG1h
a2Ugc2Vuc2UsIGl0IHNlZW1zLgoKQW55d2F5LCB0aGlzIG1hZGUgbWUgcmVhbGl6ZSB0aGF0CmRl
dl9wbV9nZW5wZF9zZXRfcGVyZm9ybWFuY2Vfc3RhdGUoZGV2KSByZXR1cm5zIC1FSU5WQUwsIGlu
IGNhc2UgdGhlCmRldmljZSdzIGdlbnBkIGRvZXNuJ3QgaGF2ZSB0aGUgLT5zZXRfcGVyZm9ybWFu
Y2Vfc3RhdGUoKSBhc3NpZ25lZC4KVGhpcyBtYXkgbm90IGJlIGNvcnJlY3QuIEluc3RlYWQgd2Ug
c2hvdWxkIGxpa2VseSBjb25zaWRlciBhbiBlbXB0eQpjYWxsYmFjayBhcyBva2F5IGFuZCBjb250
aW51ZSB0byB3YWxrIHRoZSB0b3BvbG9neSB1cHdhcmRzIHRvIHRoZQpwYXJlbnQgZG9tYWluLCBl
dGMuCgpKdXN0IHdhbnRlZCB0byBwb2ludCB0aGlzIG91dC4gSSBpbnRlbmQgdG8gcG9zdCBhIHBh
dGNoIGFzIHNvb24gYXMgSQpjYW4gZm9yIHRoaXMuCgpbLi4uXQoKS2luZCByZWdhcmRzClVmZmUK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
