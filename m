Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EFB20B26A
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 15:23:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C865B87E3B;
	Fri, 26 Jun 2020 13:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdjp+tNuXjUD; Fri, 26 Jun 2020 13:23:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2C938763C;
	Fri, 26 Jun 2020 13:23:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D0F01BF306
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 13:23:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 97DD987E1B
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 13:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tfnZYwjE74W for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 13:23:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1BA988763C
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 13:23:18 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id k15so5153666lfc.4
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 06:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PM74e3+EpsWuBmUt4WwdQ1M5mcj6bdNzDdF2OfJXJbU=;
 b=hlD2jkt5VhihxQSWPiApn8iLWjgnzyZ82HMMilY8YqWLg0Rp0tA46wLUhKk5N7EXy9
 rgo1PcPqVGOymD791BKvsG7IpgOYA6aS8W1g5FJXLON4jdbgHBOuBhmWE3dbr8a7FPwa
 kToKleRM7s9Oy27qpmQhC3hg/77lHgA0sQ9EPHbReYMPDaq3Jgqky0f+lkJjKwczKdXC
 YWFIwIP+rkhiKo3s5jn41OhPPilMcLMSJes4MafT+7LW7sIRWxj2NAxPKbT5r4/TSYE4
 rg+KImjbc8tldNfmaiowmnUocZgeTvqMvk3vculDr/1ix9vsUc30Etc0zLEpxfywAeS3
 XafQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PM74e3+EpsWuBmUt4WwdQ1M5mcj6bdNzDdF2OfJXJbU=;
 b=ERINzqwx4ItoVofJztU8wYQmM5zK8abGkia931aatfRRmWvyfKJ8+G61+aGLhqLK8p
 8RUrKahw0y/XApNgREdP9GftMmB2zVwujkgs+DxmnlfKmYl2OTc1AGnabfOLXV1jKtbV
 RhHdteFPos1xXt3RF52LlAsDOq0SvpcVJ++r3EcwnXpq5ZApnKY76q/p9Bj1F1C8EX8z
 AmZHeG+nI9yinOxuuS/IYk8UQYVbd8IC/KaNG+Vtijx/nJR34UAM00I6B4hQ2gvhEkh5
 dYWtGlyU47j3i3a0iLRlqZps7zNDykxsbPzKTVzola6IX1HiRxBeSSj/GYYw5e+Bp74z
 /xFw==
X-Gm-Message-State: AOAM5323n3I/nAxPqDz1NVHDnZdVHI/r2LjO3SSg7SajVG9x0VxXlG0C
 i2Ls6iAUGlG7nSyHMHZbd4k=
X-Google-Smtp-Source: ABdhPJzHpPU2SCmHwo7ktOuCeE7fdiW20wkbAMADVrBVU1XwpDL0ypMwHVUjWBGz/2d+xgsFj6dLEQ==
X-Received: by 2002:ac2:4158:: with SMTP id c24mr1868233lfi.109.1593177796021; 
 Fri, 26 Jun 2020 06:23:16 -0700 (PDT)
Received: from [192.168.2.145] (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.googlemail.com with ESMTPSA id h189sm6776569lfd.47.2020.06.26.06.23.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 26 Jun 2020 06:23:15 -0700 (PDT)
Subject: Re: [PATCH v2 0/4] Tegra Video Decoder driver power management
 corrections
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20200624150847.22672-1-digetx@gmail.com>
 <90323aa6-38b5-0a45-69a7-ccf380690a78@xs4all.nl>
 <23cbaa18-9461-8f72-3d43-aa14cd0c1095@gmail.com>
 <0e14df05-8299-52d6-df8f-0dd476f4109d@gmail.com>
 <e41ff660-6c6c-d603-c767-34e7f4b4a23d@xs4all.nl>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3adf74ea-3aba-ad93-977a-8b42ab653ee9@gmail.com>
Date: Fri, 26 Jun 2020 16:23:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <e41ff660-6c6c-d603-c767-34e7f4b4a23d@xs4all.nl>
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

MjYuMDYuMjAyMCAwOTo1OCwgSGFucyBWZXJrdWlsINC/0LjRiNC10YI6Cj4gT24gMjYvMDYvMjAy
MCAwMjoxNywgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+PiAyNC4wNi4yMDIwIDE4OjIzLCBEbWl0
cnkgT3NpcGVua28g0L/QuNGI0LXRgjoKPj4+IDI0LjA2LjIwMjAgMTg6MTYsIEhhbnMgVmVya3Vp
bCDQv9C40YjQtdGCOgo+Pj4+IE9uIDI0LzA2LzIwMjAgMTc6MDgsIERtaXRyeSBPc2lwZW5rbyB3
cm90ZToKPj4+Pj4gSGVsbG8sCj4+Pj4+Cj4+Pj4+IFRoaXMgc21hbGwgc2VyaWVzIGFkZHJlc3Nl
cyBhIFJ1bnRpbWUgUE0gaXNzdWUgdGhhdCB3YXMgZGlzY292ZXJlZCBkdXJpbmcKPj4+Pj4gb2Yg
VGVncmEgVkkgZHJpdmVyIHJldmlld2luZyBieSBiYWxhbmNpbmcgUlBNIHVzYWdlIGNvdW50IG9u
IFJQTSByZXN1bWUKPj4+Pj4gZmFpbHVyZS4gU2Vjb25kbHkgaXQgZml4ZXMgcmVib290IG9uIHNv
bWUgVGVncmEgZGV2aWNlcyBkdWUgdG8gYm9vdGxvYWRlcgo+Pj4+PiBleHBlY3RpbmcgVkRFIHBv
d2VyIHBhcnRpdGlvbiB0byBiZSBPTiBhdCB0aGUgYm9vdCB0aW1lLCB3aGljaCB3YXNuJ3QKPj4+
Pj4gaGFwcGVuaW5nIGluIGNhc2Ugb2YgYSB3YXJtIHJlLWJvb3RpbmcgKGkuZS4gYnkgUE1DIHJl
c2V0dGluZykuCj4+Pj4KPj4+PiBDYW4geW91IHJlYmFzZSB0aGlzIG9uIHRvcCBvZiB0aGUgbWVk
aWFfdHJlZSBtYXN0ZXIgYnJhbmNoPyBJIHRoaW5rIGEgdmFyaWFudAo+Pj4+IG9mIHBhdGNoIDEg
aGFzIGFscmVhZHkgYmVlbiBhcHBsaWVkLiBJIGZvdW5kIGEgbWFpbCB0b2RheSB3aGVyZSB5b3Ug
bWVudGlvbmVkCj4+Pj4gdGhhdCB5b3UgcHJlZmVycmVkIHlvdXIgdmVyc2lvbiAoaXQgbG9va3Mg
bGlrZSBJIG1pc3NlZCB0aGF0KSBzbyB5b3UnbGwgbmVlZCB0bwo+Pj4+IHJld29yayBwYXRjaCAx
Lgo+Pj4KPj4+IEhlbGxvIEhhbnMsCj4+Pgo+Pj4gSSdsbCB0YWtlIGEgbG9vayBhdCB3aGF0IHBh
dGNoZXMgaGFzIGJlZW4gYXBwbGllZCwgbXkgYmFkIGZvciBzZW5kaW5nCj4+PiB0aGUgdjIgdG9v
IGxhdGUuIFRoYW5rIHlvdSBmb3IgdGhlIGhlYWRzIHVwIQo+Pj4KPj4KPj4gSSB0ZXN0ZWQgdGhl
IGFscmVhZHktYXBwbGllZCB2YXJpYW50IG9mIHRoZSBwYXRjaCAxIGFuZCBpdCBoYXMgdGhlIHNh
bWUKPj4gYmVoYXZpb3VyIGFzIG15IHZhcmlhbnQsIHNvIGl0J3Mgb2theS4KPj4KPj4gV291bGQg
eW91IHdhbnQgbWUgdG8gc2VuZCBhIHYzIHdpdGhvdXQgdGhlIGNvbmZsaWN0aW5nIHBhdGNoIDEg
b3IgeW91Cj4+IGNvdWxkIGFwcGx5IHRoZSBwYXRjaGVzIDItNCBmcm9tIHRoaXMgc2VyaWVzPwo+
Pgo+IAo+IEknbGwgbWFyayAxLzQgYXMgc3VwZXJzZWRlZCBhbmQgd2lsbCBhcHBseSBwYXRjaGVz
IDItNC4gTm8gbmVlZCBmb3IgeW91Cj4gdG8gZG8gYW55dGhpbmcuCgpUaGFuayB5b3UhCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
