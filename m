Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EE92B0E9D
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 20:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A1D142041C;
	Thu, 12 Nov 2020 19:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BT52HNsucCa0; Thu, 12 Nov 2020 19:57:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C4E06203D3;
	Thu, 12 Nov 2020 19:57:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E01A1BF334
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 19:57:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69A7487244
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 19:57:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ShXHQ4D5MlU3 for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 19:57:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 218D68723D
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 19:57:31 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id d17so10246544lfq.10
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 11:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=l+LuZmtMkfC1n7/lE6H/SI0Mh1Ao1np2jN9R6QXqrls=;
 b=Vfp4HTDvElJiGNz7xUATaYIB0Kf/mwtOmML2qqUG/J50tlFR5tGxj0224JRQCzivCv
 ulm772+iaJuiLtROs/b8uk5/vQA3IPRSNmbCaHG7e/zwzGgzfdDFCXQVjOsz/2OzAj98
 wmtD3ZpVrIRFkQm2ZyuBjOqILQ5VwslfmsUFgz95ERTTn5y+YasJEGAErk2Y0c/QB/90
 oGc0l00u8obJBUXZzPwCdZ9MBc11lwToP3XEUiaHH2/TanhPrzbdU+D21A5vJmd77mmF
 2U5W+k52Fs6mvPbZhFOLsrhNNLeCiVwZv2Tntv4g1m5P6jS8Tx3WHcMnsPh3Id7qYned
 6kOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=l+LuZmtMkfC1n7/lE6H/SI0Mh1Ao1np2jN9R6QXqrls=;
 b=Ce78ZnckoqjpCpFxRaN7peYIB811p+ZhX6lXkQfcZ8ry5G6HeSTb+aUODp3ojU1Zbo
 Ld9KTKwwoArs/iStJWGOtwv+zG/YSaFvrD+L5ZVC7YxjiMIXzOkm0PTKwd+/8i5VG25g
 dnDkyulPh0xR4xTWzDN/NrV3qqiRu3PxOg0umtox3m1VgJ+gpcdJ4eqBm92nNnr6oJvj
 TH6dSNHFOOFXfIspVDj+lpyh81v3khYGtzwHCSqZ6DTtauhpFzz4pAfxB2BibfOO8DXO
 t3wRkWqZoAyvbHW92/1GVYK2OTZR1rMiN6/QvZ6g23cT+QmDCUkFkOyatoiPcy8wSak9
 WJww==
X-Gm-Message-State: AOAM532plR0Rbu1JPEAAfHrnv1y5KSHrhlBw9oY5Aqr1tJxO0yUpcXal
 zph+axqL9IiqIDmtffa43iaezV3l9E0=
X-Google-Smtp-Source: ABdhPJwLlfap7vVw06tsOwrbyXWtHxJypoIY/5r/AmEyZ8iOyfm8iKxwmR6HX9kZNQ7Nvd0sVyxhmg==
X-Received: by 2002:a19:7d8:: with SMTP id 207mr432803lfh.376.1605211049107;
 Thu, 12 Nov 2020 11:57:29 -0800 (PST)
Received: from [192.168.2.145] (109-252-193-159.dynamic.spd-mgts.ru.
 [109.252.193.159])
 by smtp.googlemail.com with ESMTPSA id q27sm845579lfd.261.2020.11.12.11.57.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Nov 2020 11:57:28 -0800 (PST)
Subject: Re: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA
 Tegra20/30 SoCs
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
 <CAPDyKFr7qTU2RPhA_ZrbCayoTTNUEno1zdmvmv+8HBe-Owrfeg@mail.gmail.com>
 <cd147ab0-1304-a491-7a56-ee6199c02d32@gmail.com>
 <2716c195-083a-112f-f1e5-2f6b7152a4b5@gmail.com>
 <CAPDyKFqUMsH9dCZ=OYqfdLt==+-8NjK9n=S5jGGNXZu6Y9q=2w@mail.gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <1f7e90c4-6134-2e2b-4869-5afbda18ead3@gmail.com>
Date: Thu, 12 Nov 2020 22:57:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <CAPDyKFqUMsH9dCZ=OYqfdLt==+-8NjK9n=S5jGGNXZu6Y9q=2w@mail.gmail.com>
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
Cc: Peter Chen <Peter.Chen@nxp.com>, DTML <devicetree@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Lee Jones <lee.jones@linaro.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Alan Stern <stern@rowland.harvard.edu>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MTEuMTEuMjAyMCAxNDozOCwgVWxmIEhhbnNzb24g0L/QuNGI0LXRgjoKPiBPbiBTdW4sIDggTm92
IDIwMjAgYXQgMTM6MTksIERtaXRyeSBPc2lwZW5rbyA8ZGlnZXR4QGdtYWlsLmNvbT4gd3JvdGU6
Cj4+Cj4+IDA1LjExLjIwMjAgMTg6MjIsIERtaXRyeSBPc2lwZW5rbyDQv9C40YjQtdGCOgo+Pj4g
MDUuMTEuMjAyMCAxMjo0NSwgVWxmIEhhbnNzb24g0L/QuNGI0LXRgjoKPj4+IC4uLgo+Pj4+IEkg
bmVlZCBzb21lIG1vcmUgdGltZSB0byByZXZpZXcgdGhpcywgYnV0IGp1c3QgYSBxdWljayBjaGVj
ayBmb3VuZCBhCj4+Pj4gZmV3IHBvdGVudGlhbCBpc3N1ZXMuLi4KPj4+Cj4+PiBUaGFuayB5b3Ug
Zm9yIHN0YXJ0aW5nIHRoZSByZXZpZXchIEknbSBwcmV0dHkgc3VyZSBpdCB3aWxsIHRha2UgYSBj
b3VwbGUKPj4+IHJldmlzaW9ucyB1bnRpbCBhbGwgdGhlIHF1ZXN0aW9ucyB3aWxsIGJlIHJlc29s
dmVkIDopCj4+Pgo+Pj4+IFRoZSAiY29yZS1zdXBwbHkiLCB0aGF0IHlvdSBzcGVjaWZ5IGFzIGEg
cmVndWxhdG9yIGZvciBlYWNoCj4+Pj4gY29udHJvbGxlcidzIGRldmljZSBub2RlLCBpcyBub3Qg
dGhlIHdheSB3ZSBkZXNjcmliZSBwb3dlciBkb21haW5zLgo+Pj4+IEluc3RlYWQsIGl0IHNlZW1z
IGxpa2UgeW91IHNob3VsZCByZWdpc3RlciBhIHBvd2VyLWRvbWFpbiBwcm92aWRlcgo+Pj4+ICh3
aXRoIHRoZSBoZWxwIG9mIGdlbnBkKSBhbmQgaW1wbGVtZW50IHRoZSAtPnNldF9wZXJmb3JtYW5j
ZV9zdGF0ZSgpCj4+Pj4gY2FsbGJhY2sgZm9yIGl0LiBFYWNoIGRldmljZSBub2RlIHNob3VsZCB0
aGVuIGJlIGhvb2tlZCB1cCB0byB0aGlzCj4+Pj4gcG93ZXItZG9tYWluLCByYXRoZXIgdGhhbiB0
byBhICJjb3JlLXN1cHBseSIuIEZvciBEVCBiaW5kaW5ncywgcGxlYXNlCj4+Pj4gaGF2ZSBhIGxv
b2sgYXQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Bvd2VyLWRvbWFp
bi55YW1sCj4+Pj4gYW5kIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9w
b3dlcl9kb21haW4udHh0Lgo+Pj4+Cj4+Pj4gSW4gcmVnYXJkcyB0byB0aGUgInN5bmMgc3RhdGUi
IHByb2JsZW0gKHByZXZlbnRpbmcgdG8gY2hhbmdlCj4+Pj4gcGVyZm9ybWFuY2Ugc3RhdGVzIHVu
dGlsIGFsbCBjb25zdW1lcnMgaGF2ZSBiZWVuIGF0dGFjaGVkKSwgdGhpcyBjYW4KPj4+PiB0aGVu
IGJlIG1hbmFnZWQgYnkgdGhlIGdlbnBkIHByb3ZpZGVyIGRyaXZlciBpbnN0ZWFkLgo+Pj4KPj4+
IEknbGwgbmVlZCB0byB0YWtlIGEgY2xvc2VyIGxvb2sgYXQgR0VOUEQsIHRoYW5rIHlvdSBmb3Ig
dGhlIHN1Z2dlc3Rpb24uCj4+Pgo+Pj4gU291bmRzIGxpa2UgYSBzb2Z0d2FyZSBHRU5QRCBkcml2
ZXIgd2hpY2ggbWFuYWdlcyBjbG9ja3MgYW5kIHZvbHRhZ2VzCj4+PiBjb3VsZCBiZSBhIGdvb2Qg
aWRlYSwgYnV0IGl0IGFsc28gY291bGQgYmUgYW4gdW5uZWNlc3NhcnkKPj4+IG92ZXItZW5naW5l
ZXJpbmcuIExldCdzIHNlZS4uCj4+Pgo+Pgo+PiBIZWxsbyBVbGYgYW5kIGFsbCwKPj4KPj4gSSB0
b29rIGEgZGV0YWlsZWQgbG9vayBhdCB0aGUgR0VOUEQgYW5kIHRyaWVkIHRvIGltcGxlbWVudCBp
dC4gSGVyZSBpcwo+PiB3aGF0IHdhcyBmb3VuZDoKPj4KPj4gMS4gR0VOUEQgZnJhbWV3b3JrIGRv
ZXNuJ3QgYWdncmVnYXRlIHBlcmZvcm1hbmNlIHJlcXVlc3RzIGZyb20gdGhlCj4+IGF0dGFjaGVk
IGRldmljZXMuIFRoaXMgbWVhbnMgdGhhdCBpZiBkZXZpY2VBIHJlcXVlc3RzIHBlcmZvcm1hbmNl
IHN0YXRlCj4+IDEwIGFuZCB0aGVuIGRldmljZUIgcmVxdWVzdHMgc3RhdGUgMywgdGhlbiBmcmFt
ZXdvcmsgd2lsbCBzZXQgZG9tYWluJ3MKPj4gc3RhdGUgdG8gMyBpbnN0ZWFkIG9mIDEwLgo+Pgo+
PiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4xMC1yYzIvc291cmNlL2RyaXZl
cnMvYmFzZS9wb3dlci9kb21haW4uYyNMMzc2Cj4gCj4gQXMgVmlyZXNoIGFsc28gc3RhdGVkLCBn
ZW5wZCBkb2VzIGFnZ3JlZ2F0ZSB0aGUgdm90ZXMuIEl0IGV2ZW4KPiBwZXJmb3JtcyBhZ2dyZWdh
dGlvbiBoaWVyYXJjaHkgKGEgZ2VucGQgaXMgYWxsb3dlZCB0byBoYXZlIHBhcmVudChzKQo+IHRv
IG1vZGVsIGEgdG9wb2xvZ3kpLgoKWWVzLCBJIGFscmVhZHkgZm91bmQgYW5kIGZpeGVkIHRoZSBi
dWcgd2hpY2ggY29uZnVzZWQgbWUgcHJldmlvdXNseSBhbmQKaXQncyB3b3JraW5nIHdlbGwgbm93
LgoKPj4gMi4gR0VOUEQgZnJhbWV3b3JrIGhhcyBhIHN5bmMoKSBjYWxsYmFjayBpbiB0aGUgZ2Vu
cGQuZG9tYWluIHN0cnVjdHVyZSwKPj4gYnV0IHRoaXMgY2FsbGJhY2sgaXNuJ3QgYWxsb3dlZCB0
byBiZSB1c2VkIGJ5IHRoZSBHRU5QRCBpbXBsZW1lbnRhdGlvbi4KPj4gVGhlIEdFTlBEIGZyYW1l
d29yayBhbHdheXMgb3ZlcnJpZGVzIHRoYXQgY2FsbGJhY2sgZm9yIGl0cyBvd24gbmVlZHMuCj4+
IEhlbmNlIEdFTlBEIGRvZXNuJ3QgYWxsb3cgdG8gc29sdmUgdGhlIGJvb3RzdHJhcHBpbmcKPj4g
c3RhdGUtc3luY2hyb25pemF0aW9uIHByb2JsZW0gaW4gYSBuaWNlIHdheS4KPj4KPj4gaHR0cHM6
Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjUuMTAtcmMyL3NvdXJjZS9kcml2ZXJzL2Jhc2Uv
cG93ZXIvZG9tYWluLmMjTDI2MDYKPiAKPiBUaGF0IC0+c3luYygpIGNhbGxiYWNrIGlzbid0IHRo
ZSBjYWxsYmFjayB5b3UgYXJlIGxvb2tpbmcgZm9yLCBpdCdzIGEKPiBQTSBkb21haW4gc3BlY2lm
aWMgY2FsbGJhY2sgLSBhbmQgaGFzIG90aGVyIHB1cnBvc2VzLgo+IAo+IFRvIHNvbHZlIHRoZSBw
cm9ibGVtIHlvdSByZWZlciB0bywgeW91ciBnZW5wZCBwcm92aWRlciBkcml2ZXIgKGEKPiBwbGF0
Zm9ybSBkcml2ZXIpIHNob3VsZCBhc3NpZ24gaXRzIC0+c3luY19zdGF0ZSgpIGNhbGxiYWNrLiBU
aGUKPiAtPnN5bmNfc3RhdGUoKSBjYWxsYmFjayB3aWxsIGJlIGludm9rZWQsIHdoZW4gYWxsIGNv
bnN1bWVyIGRldmljZXMKPiBoYXZlIGJlZW4gYXR0YWNoZWQgKGFuZCBwcm9iZWQpIHRvIHRoZWly
IGNvcnJlc3BvbmRpbmcgcHJvdmlkZXIuCj4gCj4gWW91IG1heSBoYXZlIGEgbG9vayBhdCBkcml2
ZXJzL2NwdWlkbGUvY3B1aWRsZS1wc2NpLWRvbWFpbi5jLCB0byBzZWUKPiBhbiBleGFtcGxlIG9m
IGhvdyB0aGlzIHdvcmtzLiBJZiB0aGVyZSBpcyBhbnl0aGluZyB1bmNsZWFyLCBqdXN0IHRlbGwK
PiBtZSBhbmQgSSB3aWxsIHRyeSB0byBoZWxwLgoKSW5kZWVkLCB0aGFuayB5b3UgZm9yIHRoZSBj
bGFyaWZpY2F0aW9uLiBUaGlzIHZhcmlhbnQgd29ya3Mgd2VsbC4KCj4+IDMuIFRlZ3JhIGRvZXNu
J3QgaGF2ZSBhIGRlZGljYXRlZCBoYXJkd2FyZSBwb3dlci1jb250cm9sbGVyIGZvciB0aGUgY29y
ZQo+PiBkb21haW4sIGluc3RlYWQgdGhlcmUgaXMgb25seSBhbiBleHRlcm5hbCB2b2x0YWdlIHJl
Z3VsYXRvci4gSGVuY2Ugd2UKPj4gd2lsbCBuZWVkIHRvIGNyZWF0ZSBhIHBob255IGRldmljZS10
cmVlIG5vZGUgZm9yIHRoZSB2aXJ0dWFsIHBvd2VyCj4+IGRvbWFpbiwgd2hpY2ggaXMgcHJvYmFi
bHkgYSB3cm9uZyB0aGluZyB0byBkby4KPiAKPiBObywgdGhpcyBpcyBhYnNvbHV0ZWx5IHRoZSBj
b3JyZWN0IHRoaW5nIHRvIGRvLgo+IAo+IFRoaXMgaXNuJ3QgYSB2aXJ0dWFsIHBvd2VyIGRvbWFp
biwgaXQncyBhIHJlYWwgcG93ZXIgZG9tYWluLiBZb3Ugb25seQo+IGhhcHBlbiB0byBtb2RlbCB0
aGUgY29udHJvbCBvZiBpdCBhcyBhIHJlZ3VsYXRvciwgYXMgaXQgZml0cyBuaWNlbHkKPiB3aXRo
IHRoYXQgZm9yICp0aGlzKiBTb0MuIERvbid0IGdldCBtZSB3cm9uZywgdGhhdCdzIGZpbmUgYXMg
bG9uZyBhcwo+IHRoZSBzdXBwbHkgaXMgc3BlY2lmaWVkIG9ubHkgaW4gdGhlIHBvd2VyLWRvbWFp
biBwcm92aWRlciBub2RlLgo+IAo+IE9uIGFub3RoZXIgU29DLCB5b3UgbWlnaHQgaGF2ZSBhIGRp
ZmZlcmVudCBGVyBpbnRlcmZhY2UgZm9yIHRoZSBwb3dlcgo+IGRvbWFpbiBwcm92aWRlciB0aGF0
IGRvZXNuJ3QgZml0IHdlbGwgd2l0aCB0aGUgcmVndWxhdG9yLiBXaGVuIHRoYXQKPiBoYXBwZW5z
LCBhbGwgeW91IG5lZWQgdG8gZG8gaXMgdG8gaW1wbGVtZW50IGEgbmV3IHBvd2VyIGRvbWFpbgo+
IHByb3ZpZGVyIGFuZCBwb3RlbnRpYWxseSByZS1kZWZpbmUgdGhlIHBvd2VyIGRvbWFpbiB0b3Bv
bG9neS4gTW9yZQo+IGltcG9ydGFudGx5LCB5b3UgZG9uJ3QgbmVlZCB0byByZS1pbnZlbnQgeWV0
IGFub3RoZXIgc2xldyBvZiBkZXZpY2UKPiBzcGVjaWZpYyBiaW5kaW5ncyAtIGZvciBlYWNoIFNv
Qy4KPiAKPj4KPj4gPT09Cj4+Cj4+IFBlcmhhcHMgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIGNy
ZWF0ZSBzb21lIGhhY2tzIHRvIHdvcmsgYXJvdW5kCj4+IGJ1bGxldHMgMiBhbmQgMyBpbiBvcmRl
ciB0byBhY2hpZXZlIHdoYXQgd2UgbmVlZCBmb3IgRFZGUyBvbiBUZWdyYSwgYnV0Cj4+IGJ1bGxl
dCAxIGlzbid0IHNvbHZhYmxlIHdpdGhvdXQgY2hhbmdpbmcgaG93IHRoZSBHRU5QRCBjb3JlIHdv
cmtzLgo+Pgo+PiBBbHRvZ2V0aGVyLCB0aGUgR0VOUEQgaW4gaXRzIGN1cnJlbnQgZm9ybSBpcyBh
IHdyb25nIGFic3RyYWN0aW9uIGZvciBhCj4+IHN5c3RlbS13aWRlIERWRlMgaW4gYSBjYXNlIHdo
ZXJlIG11bHRpcGxlIGRldmljZXMgc2hhcmUgcG93ZXIgZG9tYWluIGFuZAo+PiB0aGlzIGRvbWFp
biBpcyBhIHZvbHRhZ2UgcmVndWxhdG9yLiBUaGUgcmVndWxhdG9yIGZyYW1ld29yayBpcyB0aGUK
Pj4gY29ycmVjdCBhYnN0cmFjdGlvbiBpbiB0aGlzIGNhc2UgZm9yIHRvZGF5Lgo+IAo+IFdlbGws
IEkgYWRtaXQgaXQncyBhIGJpdCBjb21wbGV4LiBCdXQgaXQgc29sdmVzIHRoZSBwcm9ibGVtIGlu
IGEKPiBuaWNlbHkgYWJzdHJhY3RlZCB3YXkgdGhhdCBzaG91bGQgd29yayBmb3IgZXZlcnlib2R5
LCBhdCBsZWFzdCBpbiBteQo+IG9waW5pb24uCgpUaGUgT1BQIGZyYW1ld29yayBzdXBwb3J0cyBi
b3RoIHZvbHRhZ2UgcmVndWxhdG9yIGFuZCBwb3dlciBkb21haW4sCmhpZGluZyB0aGUgaW1wbGVt
ZW50YXRpb24gZGV0YWlscyBmcm9tIGRyaXZlcnMuIFRoaXMgbWVhbnMgdGhhdCBPUFAgQVBJCnVz
YWdlIHdpbGwgYmUgdGhlIHNhbWUgcmVnYXJkbGVzcyBvZiB3aGF0IGFwcHJvYWNoIChyZWd1bGF0
b3Igb3IgcG93ZXIKZG9tYWluKSBpcyB1c2VkIGZvciBhIHBhcnRpY3VsYXIgU29DLgoKPiBBbHRo
b3VnaCwgbGV0J3Mgbm90IGV4Y2x1ZGUgdGhhdCB0aGVyZSBhcmUgcGllY2VzIG1pc3NpbmcgaW4g
Z2VucGQgb3IKPiB0aGUgb3BwIGxheWVyLCBhcyB0aGlzIERWRlMgZmVhdHVyZSBpcyByYXRoZXIg
bmV3IC0gYnV0IHRoZW4gd2Ugc2hvdWxkCj4ganVzdCBleHRlbmQvZml4IGl0LgoKV2lsbCBiZSBu
aWNlIHRvIGhhdmUgYSBwZXItZGV2aWNlIEdFTlBEIHBlcmZvcm1hbmNlIHN0YXRzLgoKVGhpZXJy
eSwgY291bGQgeW91IHBsZWFzZSBsZXQgbWUga25vdyB3aGF0IGRvIHlvdSB0aGluayBhYm91dCBy
ZXBsYWNpbmcKcmVndWxhdG9yIHdpdGggdGhlIHBvd2VyIGRvbWFpbj8gRG8geW91IHRoaW5rIGl0
J3MgYSB3b3J0aHdoaWxlIGNoYW5nZT8KClRoZSBkaWZmZXJlbmNlIGluIGNvbXBhcmlzb24gdG8g
dXNpbmcgdm9sdGFnZSByZWd1bGF0b3IgZGlyZWN0bHkgaXMKbWluaW1hbCwgYmFzaWNhbGx5IHRo
ZSBjb3JlLXN1cHBseSBwaGFuZGxlIGlzIHJlcGxhY2VkIGlzIHJlcGxhY2VkIHdpdGgKYSBwb3dl
ci1kb21haW4gcGhhbmRsZSBpbiBhIGRldmljZSB0cmVlLgoKVGhlIG9ubHkgdGhpbmcgd2hpY2gg
bWFrZXMgbWUgZmVlbCBhIGJpdCB1bmNvbWZvcnRhYmxlIGlzIHRoYXQgdGhlcmUgaXMKbm8gcmVh
bCBoYXJkd2FyZSBub2RlIGZvciB0aGUgcG93ZXIgZG9tYWluIG5vZGUgaW4gYSBkZXZpY2UtdHJl
ZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
