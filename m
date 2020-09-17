Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD2426D8DF
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 30E972E17E;
	Thu, 17 Sep 2020 10:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S3bT6xOMwNgQ; Thu, 17 Sep 2020 10:24:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C2CE22040E;
	Thu, 17 Sep 2020 10:24:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1761B1BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 074252040E
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 26DGGw56ZLNr for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:24:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id EFD302E163
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:24:04 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id a17so1458078wrn.6
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 03:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=h2LFimxoyNonSX50+U9lgU4xGUhF6TvhEo2cl22/6to=;
 b=YkdtHyyrqsnArPN1o1wdZM04OLHAjusxeyiU05bk6yIvyztJndYBnXlLqhaJkmmzI7
 /HRr0VoNUmuM3dqp0sXUcfRzfac1eYN3KRfsDoDNXnoAkhsHskyCtguu6p8fAsHDIk8r
 r8tvEcdgM5y8k+TdCPJf3KPtXjUmhPAMoyuemy+TiQG870NfHZRYZpudwP5UrVyy2rnH
 N4IZbg6ihAylKLrFoG4qTsXumf5hf8WfHh6g+bIzkwoBSEQzfduyF7R2oSs5lu3GePiY
 nEQzpABeCmyqJ+YgiGdu5yqQ+t9tizSBsQU0xMmK+bFe/jOXQ7fcaZ2R1vf+8W6lyCtP
 P0Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=h2LFimxoyNonSX50+U9lgU4xGUhF6TvhEo2cl22/6to=;
 b=U7LUy6qRPxaDjNzQffQYS52l/2z1364exJeKXm0H8K9Y3Ldc4MYYn+W+ep6cYstPU1
 3wVk8S0gUsRyROSVkgTfBUSpc5NKaa7i29xXXe2+xcc2Y0hk3t+HKvSqS5UKDd83g32j
 QL1f1fi4cOvo/YEqmlNOihDWezGruAJww/lSATCpUAG0N8WQrNl8FC8XAlZTgmgS/vya
 kFnluHMbgv2eFXd8zRGRyViYFbrJYQnvVGUO+zHwttOCWoAtdsT5xbW8CQhJ8XMHXWfS
 gxjiIieUnv4sVAqa8XnfcRzTA1LCMG5ElhWqwlJ+Bj9pPymkxCSHxYPWt/vxcdIoT9Ji
 51rg==
X-Gm-Message-State: AOAM530nXfFahkmo528LgyE+K9TxngN/7Mhi7lmKZLDh5RcTNUbxeFOK
 Ap1sIWI01LIqU9AozVqLlAo=
X-Google-Smtp-Source: ABdhPJxk4RL8Vf6mAUx1Otx9e8fG7C/3c0n7sGBIWdI5eI4rHJ+K/A7mw1Ff+ox2J0agrbCPqo54Ig==
X-Received: by 2002:adf:f14f:: with SMTP id y15mr30377971wro.69.1600338243397; 
 Thu, 17 Sep 2020 03:24:03 -0700 (PDT)
Received: from [192.168.1.211] ([2.29.208.34])
 by smtp.gmail.com with ESMTPSA id l4sm10287901wme.43.2020.09.17.03.24.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Sep 2020 03:24:02 -0700 (PDT)
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917075356.GA3333802@kroah.com>
 <d97fb93f-5258-b654-3063-863e81ae7298@gmail.com>
 <20200917101538.GO4282@kadam>
From: Dan Scally <djrscally@gmail.com>
Message-ID: <36d3322a-3128-83b8-bd14-72da34b71e7c@gmail.com>
Date: Thu, 17 Sep 2020 11:24:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917101538.GO4282@kadam>
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, mchehab@kernel.org,
 jorhand@linux.microsoft.com, Greg KH <gregkh@linuxfoundation.org>,
 kieran.bingham@ideasonboard.com, linux-kernel@vger.kernel.org,
 yong.zhi@intel.com, sakari.ailus@linux.intel.com, bingbu.cao@intel.com,
 kitakar@gmail.com, davem@davemloft.net, tian.shu.qiu@intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTcvMDkvMjAyMCAxMToxNSwgRGFuIENhcnBlbnRlciB3cm90ZToKPiBPbiBUaHUsIFNlcCAx
NywgMjAyMCBhdCAxMDo0Nzo1MEFNICswMTAwLCBEYW4gU2NhbGx5IHdyb3RlOgo+PiBIaSBHcmVn
IC0gdGhhbmtzIGZvciB0aGUgY29tbWVudHMsIGFwcHJlY2lhdGUgaXQgKHNvcnJ5IHRoZXJlJ3Mg
c28gbWFueSwKPj4gSSdtIG5ldyB0byBib3RoIEMgYW5kIGtlcm5lbCB3b3JrKQo+IEl0J3MgcHJl
dHR5IGltcHJlc3NpdmUgd29yayBpZiB5b3UncmUgbmV3IHRvIEMuLi4KVGhhbmtzIChhbmQgZm9y
IHlvdXIgb3RoZXIgcmVwbHkgdG9vLCBoYXZlbid0IGhhZCB0aW1lIHRvIGdvIHRocm91Z2ggaXQK
aW4gZGVwdGggeWV0KS4gSSd2ZSBiZWVuIHVzaW5nIHB5dGhvbiBmb3IgYSB3aGlsZSwgYnV0IHRo
aXMgaXMgbXkgZmlyc3QKYXR0ZW1wdCBhdCBhbnl0aGluZyBzZXJpb3VzIHdpdGggQy4KPj4+PiAr
CQkJcmV0dXJuOwo+Pj4gTm8gZXJyb3IgdmFsdWU/Cj4+IFRoZSBwcm90b3R5cGUgZm9yIHN5bmNf
c3RhdGUgY2FsbGJhY2tzIGlzIHRvIHJldHVybiB2b2lkLCBzbyBteQo+PiB1bmRlcnN0YW5kaW5n
IGlzIGl0IGNhbid0IHJldHVybiBhbiBlcnJvciB2YWx1ZS7CoCBJIGd1ZXNzIGEgYmV0dGVyIHRo
aW5nCj4+IHRvIGRvIG1pZ2h0IGJlIGNhbGwgYW5vdGhlciBmdW5jdGlvbiBwZXJmb3JtaW5nIGNs
ZWFudXAgYW5kIHVubG9hZGluZwo+PiB0aGUgZHJpdmVyIGJlZm9yZSB0aGUgcmV0dXJuIG9yIHNv
bWV0aGluZyBhbG9uZyB0aG9zZSBsaW5lcyB0aG91Z2guCj4gWWVhaC4gIEkgc3VzcGVjdCB5b3Ug
c2hvdWxkIGJlIHVzaW5nIGEgZGlmZmVyZW50IGNhbGxiYWNrIGluc3RlYWQgb2YKPiAtPnN5bmNf
c3RhdGUoKSBidXQgSSBkb24ndCBrbm93IHdoYXQuLi4gOi8KWWVhaCwgdGhpcyBpcyB3aHkgSSB3
YW50ZWQgdG8gc3VibWl0IGl0IG5vdyByZWFsbHk7IEkgdG9vIHN1c3BlY3QgSQpzaG91bGQgcmVh
bGx5IGJlIHVzaW5nIGEgZGlmZmVyZW50IGNhbGxiYWNrIGJ1dCBJIGNvdWxkbid0IGZpbmQgYSBi
ZXR0ZXIKb3B0aW9uLgo+IHJlZ2FyZHMsCj4gZGFuIGNhcnBlbnRlcgo+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
