Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7F8E2DB1
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Oct 2019 11:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 824B62309D;
	Thu, 24 Oct 2019 09:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rs-O7-cfeq4J; Thu, 24 Oct 2019 09:39:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2FACB204AE;
	Thu, 24 Oct 2019 09:39:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C81FB1BF33E
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 09:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5796876D5
 for <devel@linuxdriverproject.org>; Thu, 24 Oct 2019 09:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zVaowGBKcXr2 for <devel@linuxdriverproject.org>;
 Thu, 24 Oct 2019 09:39:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 00743876C2
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 09:39:37 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id q13so20305637wrs.12
 for <devel@driverdev.osuosl.org>; Thu, 24 Oct 2019 02:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=t1B4Upx5L3UHH8ve1wWiItXwI5Up+GeBea3yXsTkPvA=;
 b=qF+v9F05QVKtv5B5gUoCVvNSfVME4kV5eTlt2R1uArWbs575qU2tMEj2bC2IaydZSp
 L+xXvY2U4N9O6aOClEUC0qNZj2j9jwynyZCtnqAketOka7U2rfE0y/5usgqx98ATvYwR
 0jizZVABaW71ijapZ6X42ho9LaJn9w0r0bfwYppe76OZKCsMQP61ZUkNOKvyaNBCWr1f
 KXpgoEQEgsr+/ik185kGem5+Zvx2EqR17W2fLWpLVEPnMr8a8JLP/IvhP/RXpFAvB220
 o37oNycOIMzVRhS8d3AJRWPy37F1+QWHlCTwQPTAoN+RunGyQxliN1pMsn4Ho/2nXR4Q
 5zgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=t1B4Upx5L3UHH8ve1wWiItXwI5Up+GeBea3yXsTkPvA=;
 b=lOk2jhpgSrmJp3YAKmBH1duZZnpOBMNRVJcdTmb3JQBvVzj19QdzJ3LDSaUwvzGm6l
 YbxWON1u5I4TDp/fVHIhzL3oaiXMJhSz4VjTatlr3+Z8upBhg53o6IZTaAnSZFsSIkwh
 ez7Azh/+9tlORk7z508V+bZ1YUGewWIyXy+IYZXktX0NqsqsNo0TK6E6vPoMsKpUJHeK
 f5EJZbJpWbO6/hBe72r+ku8mEdeIuZnSV4meRANIIcoZw5SsSI15C1HtMCBPe5DnJBFA
 DKC23TWGXA5UzuvHIA33MXuVxMStbWnACe2kqmerJFYSR16QJD5pjEVERaL54JOr6/ce
 mt/Q==
X-Gm-Message-State: APjAAAWUtgFuC6/SxLgsGXLqkNd08JRBkX4mLoBpn1tkwcCWX2y+Ygsz
 DYD5QJ0PbNI5vNeFcl3QuYc=
X-Google-Smtp-Source: APXvYqyhpkr8qJ3hxhJsygaSaVXu6ia/0VFGb7Guafugca9uJFHThI8Q89EQtjL/gKMhrtk5Nt1QYQ==
X-Received: by 2002:a5d:464f:: with SMTP id j15mr2945291wrs.366.1571909976233; 
 Thu, 24 Oct 2019 02:39:36 -0700 (PDT)
Received: from pali ([2a02:2b88:2:1::5cc6:2f])
 by smtp.gmail.com with ESMTPSA id q22sm1895115wmj.5.2019.10.24.02.39.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 24 Oct 2019 02:39:35 -0700 (PDT)
Date: Thu, 24 Oct 2019 11:39:33 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali.rohar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20191024093933.zocacmhle3cuq7ld@pali>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828160817.6250-1-gregkh@linuxfoundation.org>
User-Agent: NeoMutt/20170113 (1.7.2)
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
Cc: devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5IDI4IEF1Z3VzdCAyMDE5IDE4OjA4OjE3IEdyZWcgS3JvYWgtSGFydG1hbiB3
cm90ZToKPiBUaGUgZnVsbCBzcGVjaWZpY2F0aW9uIG9mIHRoZSBmaWxlc3lzdGVtIGNhbiBiZSBm
b3VuZCBhdDoKPiAgIGh0dHBzOi8vZG9jcy5taWNyb3NvZnQuY29tL2VuLXVzL3dpbmRvd3Mvd2lu
MzIvZmlsZWlvL2V4ZmF0LXNwZWNpZmljYXRpb24KCkZZSSwgaXQgbG9va3MgbGlrZSB0aGF0IHRo
aXMgcmVsZWFzZWQgc3BlY2lmaWNhdGlvbiBpcyBqdXN0IGNvcHkrcGFzdGUKZnJvbSBleEZBVCBw
YXRlbnQgaHR0cHM6Ly9wYXRlbnRzLmdvb2dsZS5jb20vcGF0ZW50L1VTMjAxNTAzNzA4MjEgd2hp
Y2gKd2FzIHRoZXJlIHB1YmxpY2x5IGF2YWlsYWJsZSBmb3IgYSB3aGlsZS4gQW5kIHNpbWlsYXIv
c2FtZT8gY29weSB3YXMKYXZhaWxhYmxlIG9uIHRoZSBmb2xsb3dpbmcgc2l0ZSBodHRwczovL3d3
dy5udGZzLmNvbS9leGZhdC1vdmVydmlldy5odG0KCi0tIApQYWxpIFJvaMOhcgpwYWxpLnJvaGFy
QGdtYWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
