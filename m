Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B535655C7A
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Dec 2022 07:01:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C66E4012E;
	Sun, 25 Dec 2022 06:01:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C66E4012E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cGEWc7Ud4vli; Sun, 25 Dec 2022 06:01:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 311B6400E7;
	Sun, 25 Dec 2022 06:01:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 311B6400E7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 604AF1BF5B5
 for <devel@linuxdriverproject.org>; Sun, 25 Dec 2022 06:01:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A162411C6
 for <devel@linuxdriverproject.org>; Sun, 25 Dec 2022 06:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id STRaH2D1g2x4 for <devel@linuxdriverproject.org>;
 Sun, 25 Dec 2022 06:01:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com
 [IPv6:2a00:1450:4864:20::237])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2739410EC
 for <devel@driverdev.osuosl.org>; Sun, 25 Dec 2022 06:01:47 +0000 (UTC)
Received: by mail-lj1-x237.google.com with SMTP id
 t8-20020a2e9548000000b0027702e8a5b2sf2019965ljh.20
 for <devel@driverdev.osuosl.org>; Sat, 24 Dec 2022 22:01:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671948105; cv=pass;
 d=google.com; s=arc-20160816;
 b=kzKqhOhkWnj8iba8wAqleRCX/lHK93Ri8lg+qM7Iqj8Bwg+3J+s9ubKZSNzI1497Mf
 WaW+XGUhP1wkvRJXrPGYfF0IsYsq5ujQ2j1hS7r3VfigmjwxFFdygPt97RCmH0U3WD2x
 LlD8r7eJEbFWSYX1XvJUj0SWOWyfomdQXnfzg4/L+IAQEs7qUfbAhacSjpjXh8kiExsu
 yZrhfxJ4Qk44wEBP5mXyDvDbKOoMDKpVDmbBmbwRAHQLRw9xnKWNkctK6loAXTo0t0Zg
 WbJGcZQbaJOa2KQsMXOqbUokdZ2rhq052kjWJnFSvhd9sR7ZjFLvlWrvI4JVpPC5P3ml
 UMCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20160816; 
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:content-transfer-encoding:to:subject
 :message-id:date:from:mime-version:sender:dkim-signature
 :dkim-signature;
 bh=lhrsQuJEEYuSz+RPFy7BcCQfVidxvd6pLufS8VfN7ps=;
 b=IDvBIWPsjDIG5CJ0BPpPsWK65tgYV6FeOSW94HLFde5w9Q4sHPPABeMkV4vutoeBEN
 /3lS73og+MULz5oeLPQmCJeeOf4ta6H9KsHOBTOvM6bJuSHU4tAzGxb3/GUkPYZ/Q9Cb
 7qbM2869mF9D0eQL08LTR5ACxqEINE/NrlHsN3PYLRk116VBqwdqju6CQWbm00owamK3
 4WEhcEOK/I6muyUJuCoha0LWrF35RTHVUue+tHyu9K703HiINeGrEWBL2WweTa1xFhAs
 gOZW/vsmrQQ0GDELiiLRCihml3sroTP7JTRhr6gSD9mfWj3mnLVZIO80sGdUtpB/Us92
 ed6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KnK70E0U;
 spf=pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::52e as permitted sender)
 smtp.mailfrom=saradfd5254@gmail.com; 
 dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post
 :x-spam-checked-in-group:list-id:mailing-list:precedence
 :x-original-authentication-results:x-original-sender
 :content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lhrsQuJEEYuSz+RPFy7BcCQfVidxvd6pLufS8VfN7ps=;
 b=XqoeqeZ/DeszDY1ZXrdte8GujL3Yn44CGDRAckr+TCC+33xNNPm9ImXFI389fJA/XD
 MeXuVXFDy/0u2zplMioNC2+DsuBi3BN/XwxHmKpM9U5ndmKl4Y9SgbO3nBFJYRUKwnay
 NYoWMeic2pm+4j3HekUA8pXLGvvqmUEVYn12f/KlXRXGtsEi2Rf8Ab+1qR246jmAAZt1
 mliTP6dvUUdTZxjvsNKiXrfrxwDJz8tRvZl0jBqKhdvQqHueO6zwz5vGz0YfmIY3BlSa
 6Zwxic/KeoA3eld1ob5HlxhrzGmgBxeHqtylLQ1kJ28LuLzmKYxYg8r2+XSLP2/COGqI
 ttsA==
X-Gm-Message-State: AFqh2kp+ll/Fj4ax/+2JsUFRg1p7AuUbXUqKHRMC30sScalIguENpI00
 X9pd/sN1Cp3JEqWY7IfUAqo=
X-Google-Smtp-Source: AMrXdXvNhUT41HisAWeBmwZQfMP+iOusIdx+2Dkb/Ywtze5Ja34xfApbT6ZlrxSuthWzRzWLy0DCQA==
X-Received: by 2002:a05:6512:c1e:b0:4cb:d3:b80f with SMTP id
 z30-20020a0565120c1e00b004cb00d3b80fmr232975lfu.435.1671948105245; 
 Sat, 24 Dec 2022 22:01:45 -0800 (PST)
X-BeenThere: 2030-mohanndahad24@googlegroups.com
Received: by 2002:a2e:bc17:0:b0:26f:8b88:ccbf with SMTP id
 b23-20020a2ebc17000000b0026f8b88ccbfls1100372ljf.1.-pod-prod-gmail; 
 Sat, 24 Dec 2022 22:01:34 -0800 (PST)
X-Received: by 2002:a2e:b895:0:b0:279:ee72:6ab1 with SMTP id
 r21-20020a2eb895000000b00279ee726ab1mr5129889ljp.42.1671948094125; 
 Sat, 24 Dec 2022 22:01:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1671948094; cv=none;
 d=google.com; s=arc-20160816;
 b=u8TVYwtYpHSUe/RjooTg1BeaHfjaSl8Z4h/OAsS75f6zvoPeCVn1HP5EaPypqNZAWT
 T1pa1MJLQQZ9rDVx0/0bfvgEAUB8w8+e16AG4bqq+AcadQcbfFd694bZQ+abIX0XvVAo
 5eBr8EFdxfYzQY9vInT8cCXpY48bOvtj1+K+xA9NvKEt9zW6nwpMtQySs8Ace3iSKnGW
 8S1T/HS8miLkMJ8T1QBBFywzBeJstVAye+o9GJG9u7weJ/ZS1FslwEfC7axAPkGPsfAq
 RL5NJrl95Eu/bUGR6OwcNjFm2mvk8uYgpdZdwWqHq8o/zThBzYmxgkDZyKBkNHh/q0CL
 1Kow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20160816; 
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:dkim-signature;
 bh=tPy1FV2Qqx15ebAspwSYhQCBbdIFx0TxbvbwCRQf5uQ=;
 b=QZq3JGaEPzi6M1LaKssKzQhR18OxTSU7ox4tlDYX+ozPZ0mXhOmWbF511TmtTo0OJi
 WrE6wFdWS+4MUuCKRVrJt+VpZJ2/bdW17vhUedZZBTxBRiJYZlJdbdIoXI9upn+ZPEpW
 UMHzPGRKGwp9Qr3Vhuj2QokETPy9FUI2AeyrCjtkqFTvd9QC6M1zcBY6beEmYkFPpPCO
 mQut/1aswJOHLTPeK9bhUx50ltxaZtQA2zuMXq20Qi5Sllg92ilvZl7WDXxyRjezVvra
 Rgac9iYZiM69vqYxotU2/bvyeguyIg8IKQX1nDf2FyAwxUdx5arMdVXnK2BDK/4K9hV2
 MW6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KnK70E0U;
 spf=pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::52e as permitted sender)
 smtp.mailfrom=saradfd5254@gmail.com; 
 dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com.
 [2a00:1450:4864:20::52e]) by gmr-mx.google.com with ESMTPS id
 z22-20020a2eb536000000b0027f4da85e12si261771ljm.8.2022.12.24.22.01.34
 for <2030-mohanndahad24@googlegroups.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 24 Dec 2022 22:01:34 -0800 (PST)
Received-SPF: pass (google.com: domain of saradfd5254@gmail.com designates
 2a00:1450:4864:20::52e as permitted sender) client-ip=2a00:1450:4864:20::52e; 
Received: by mail-ed1-x52e.google.com with SMTP id d14so12157737edj.11
 for <2030-mohanndahad24@googlegroups.com>;
 Sat, 24 Dec 2022 22:01:34 -0800 (PST)
X-Received: by 2002:a05:6402:14c7:b0:484:d7bf:76cb with SMTP id
 f7-20020a05640214c700b00484d7bf76cbmr23208edx.183.1671948093692; Sat, 24 Dec
 2022 22:01:33 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?2LPYp9ix2Kkg2LnYqNivINin2YTYrNmI2KfYrw==?=
 <saradfd5254@gmail.com>
Date: Sun, 25 Dec 2022 08:00:00 +0200
Message-ID: <CAC+vY9Ddc4LZKN1ziDXZd8_8mAqjaKxXj6+gmqveRVGPUkAuYw@mail.gmail.com>
Subject: =?UTF-8?B?Itil2K/Yp9ix2Kkg2KfZhNmF2YjYp9mH2Kgg2YjYp9mE2YXZh9in2LHYp9iqIiDYotmB?=
 =?UTF-8?B?2KfZgiDYrNiv2YrYr9ipINmG2K3ZiCDYpdiv2KfYsdipINiw2YPZitipINmE2YTZhdmI2KfYsdivINin?=
 =?UTF-8?B?2YTYqNi02LHZitipINio2KfZhNmF2KTYs9iz2KfYqiDZhNmE2KrZgdin2LXZitmEIDowMDIwMTAyMzk5?=
 =?UTF-8?B?MDkwMQ==?=
To: undisclosed-recipients:;
X-Original-Sender: saradfd5254@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=KnK70E0U;       spf=pass
 (google.com: domain of saradfd5254@gmail.com designates 2a00:1450:4864:20::52e
 as permitted sender) smtp.mailfrom=saradfd5254@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list 2030-mohanndahad24@googlegroups.com;
 contact 2030-mohanndahad24+owners@googlegroups.com
X-Spam-Checked-In-Group: 2030-mohanndahad24@googlegroups.com
X-Google-Group-Id: 68851416281
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlegroups.com; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:x-original-authentication-results
 :x-original-sender:content-transfer-encoding:to:subject:message-id
 :date:from:mime-version:sender:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lhrsQuJEEYuSz+RPFy7BcCQfVidxvd6pLufS8VfN7ps=;
 b=NHpQEpe0wFcRQdtAXYDQ3CNKKpxMBq9VVeIPe/Js6Wuior5tz1/TjdVExdDY6iooHS
 6SAQiKW9GeGqpUsNDrbq/NpNFScO7FqcpRVv8GpbtpgQ/AS7MT9oy8NRLNBtvbir5hsz
 zNqUkhsV2G+zHi64b7VT+aQfrz23jIZVeXq1sVIh7+u1JySGLVrD79HbGI07yJCLycVz
 VAKIBUvxYEPdfQd1GPzKa3iBOs0P4IKPgAZowrxS5trjwmnWl0PmU+IZE1C2ecSzRle+
 9Rduoy9mWTEAZ0vaFhWfkAdX9i4mr3sdIMA9iHTX4CqfUkqfIxiqM2y9tcxdWAl/LjaB
 uzmg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=list-unsubscribe:list-archive:list-help:list-post:list-id
 :mailing-list:precedence:x-original-authentication-results
 :x-original-sender:content-transfer-encoding:to:subject:message-id
 :date:from:mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lhrsQuJEEYuSz+RPFy7BcCQfVidxvd6pLufS8VfN7ps=;
 b=ZG7UpzRYbR+7dx+Y11f1uVdTSrge9Zm/azhYf0KR48nXJ7WcyUv18L8BzIHa0jT/9H
 eq9S+NsVaUKdUAJcALqxVbwtsIdigevo9KcAT8rF1O93KYfF0eODZo5HbRHeASDs2z+R
 hp+1lY/Jd0DFfJbEQJ4Df3BBlHN6Nm1aVC8Q82Qq3Pw09AFD/AwcQW6xBnJ759LJtSYN
 XAst6NtngrG4Rv+A8rJNuRClumOVdas6BYURYEk88QSB/Cpj3WMHUV9HBM76gIa9XBx6
 8bJrAa9ghkBUPuCGxkx3tBP6ZfEgNVLvgc37JtpnvhcW71LXjyJW8Ri16XKPSuzXKMqN
 yQoA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=permerror (bad
 message/signature format)
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=googlegroups.com
 header.b="NHpQEpe0"; dkim=pass (2048-bit key) header.d=gmail.com
 header.b="ZG7UpzRY"
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

2KfZhNiz2YTYp9mFINi52YTZitmD2YUg2YjYsdit2YXYqSDYp9mE2YTZhyDZiNio2LHZg9in2KrZ
hw0KDQrYqtmH2K/ZitmD2YUg2KfZhNiv2KfYsSDYp9mE2LnYsdio2YrYqSDZhNmE2KrZhtmF2YrY
qSDYp9mE2KfYr9in2LHZitipINij2LfZitioINiq2K3Zitin2KrZh9inINmI2KPYtdiv2YIg2KPZ
hdmG2YrYp9iq2YfYpyDYqNiv2YjYp9mFINin2YTYqtmI2YHZitmCLg0KDQrZiNiq2YLYr9mFINmE
2YPZhQ0KDQrYqNix2YbYp9mF2Kwg2KXYr9in2LHYqSDYp9mE2YXZiNin2YfYqCDZiNin2YTZhdmH
2KfYsdin2Kog2KfZhNmF2KrZg9in2YXZhNipDQoNCtin2YTZhdi52KrZhdivINmF2YYg2KfZhNiv
2KfYsSAg2KfZhNi52LHYqNmK2Kkg2YTZhNiq2YbZhdmK2Kkg2KfZhNin2K/Yp9ix2YrYqSkgQUhB
RCApDQoNCtiu2YTYp9mEINin2YTZgdiq2LHYqSDZhdmGIDEg2KfZhNmJIDUg2YrZhtin2YrYsSAy
MDIz2YUNCg0K2KfZiNmG2YTYp9mK2YYg2LnYqNixINiq2LfYqNmK2YIg2LLZiNmFINmB2Ykg2K3Y
p9mEINiq2LnYsNixINin2YTYrdi22YjYsQ0KDQoNCg0KDQoNCtiq2LPYp9i52K8g2YfYsNmHINin
2YTYr9mI2LHYqSDYp9mE2KrYr9ix2YrYqNmK2Kkg2YXYqtiu2LXYtdmKINin2YTZhdmI2KfYsdiv
INin2YTYqNi02LHZitipINi52YTZiSDZgdmH2YUg2YXYp9mH2YrYqSDYo9mG2LjZhdipDQrYpdiv
2KfYsdipINin2YTZhdmI2KfZh9ioINmI2YXYudix2YHYqSDYp9mE2KPYr9mI2KfYqiDYp9mE2KrZ
iiDYqtmF2YPZkdmG2YfZhSDZhdmGINiq2LXZhdmK2YUg2YbYuNin2YUg2YTYpdiv2KfYsdipINin
2YTZhdmI2KfZh9ioDQrZgdmKINmF2KTYs9iz2KfYqtmH2YUg2YjZhdi5INiq2LLYp9mK2K8g2KPZ
h9mF2YrYqSDYo9mG2LjZhdipINil2K/Yp9ix2Kkg2KfZhNmF2YjYp9mH2Kgg2KPYtdio2K0g2YXZ
hiDYp9mE2LbYsdmI2LHZiiDYo9mGDQrYqtit2LHYtSDYp9mE2YXYpNiz2LPYp9iqINi52YTZiSDY
qti12YXZitmFINmG2LjYp9mFINmB2LnZkdin2YQg2YjZhdiq2YPYp9mF2YQg2YHZiiDYpdiv2KfY
sdipINin2YTZhdmI2KfZh9io2Iwg2YjYqNin2YTYqtij2YPZitivDQrZitis2Kgg2LnZhNmJINiw
2YTZgyDYp9mE2YbYuNin2YUg2KPZhiDZitiq2YjYp9mB2YIg2YXYuSDYp9mE2KrZiNis2ZHZhyDY
p9mE2KfYs9iq2LHYp9iq2YrYrNmKINmE2YTZhdik2LPYs9ipINmI2YXYuSDYrNmF2YrYuQ0K2YjY
uNin2KbZgSDZiNi52YXZhNmK2KfYqiDYpdiv2KfYsdipINin2YTZhdmI2KfYsdivINin2YTYqNi0
2LHZitipLg0KDQrZiNiq2YLYr9mFINmH2LDZhyDYp9mE2K/ZiNix2Kkg2YXYudmE2YjZhdin2Kog
2LnZhdmE2YrYqSDZiNit2K/Zitir2Kkg2LnZhiDZg9mK2YHZitipINin2YTYqNit2Ksg2LnZhiDY
o9i12K3Yp9ioINin2YTZhdmI2KfZh9ioDQrZiNin2YTZhdmH2KfYsdin2Kog2YjYp9mG2KrZgtin
2KHZh9mFINmE2YTYudmF2YQg2K3ZitirINiq2LnYqtio2LEg2LnZhdmE2YrYqSDYqtmI2LjZitmB
INmI2KrYudmK2YrZhiDZiNil2K/Yp9ix2Kkg2KfZhNmF2YjYp9mH2KgNCtmF2YYg2KPZh9mFINin
2YTZiNi42KfYptmBINmB2Yog2YXYrNin2YQg2KfZhNmF2YjYp9ix2K8g2KfZhNio2LTYsdmK2Kkg
2YjYp9mE2KrZiiDYqtmG2LfZiNmKINi52YTZiSDZhdis2YXZiNi52Kkg2YXYqtmG2YjYudipDQrZ
hdmGINin2YTYp9iz2KrYsdin2KrZitis2YrYp9iqINmE2YXYs9in2LnYr9ipINin2YTZhdik2LPY
s9ipINi52YTZiSDYqtmE2KjZitipINin2K3YqtmK2KfYrNin2KrZh9inINmF2YYg2KfZhNmF2YjY
uNmB2YrZhg0K2YjYp9mE2LnYp9mF2YTZitmGINin2YTYo9mD2YHYp9ihINin2YTYrdin2YTZitip
INmI2KfZhNmF2LPYqtmC2KjZhNmK2KkuDQoNCg0KDQrYp9mE2KfZh9iv2KfZgQ0KDQrYp9mD2KrY
s9in2Kgg2KfZhNmF2LnYsdmB2Kkg2YjYp9mE2YXZh9in2LHYp9iqINin2YTZhdiq2K7Ytdi12Kkg
2YHZiiDYo9mG2LTYt9ipINiq2YjYuNmK2YEg2YjYp9mD2KrYs9in2Kgg2KfZhNmF2YjYuNmB2YrZ
hiDYp9mE2YXZiNmH2YjYqNmK2YYuDQrYqtit2K/Zitiv2Iwg2KfYrtiq2YrYp9ix2Iwg2YjYqtij
2YfZitmEINin2YTZhdmI2LjZgdmK2YYg2KfZhNis2K/YryDZgdmKINin2YTZhdik2LPYs9in2Kou
DQrZiNi22Lkg2YXYrNmF2YjYudipINmF2KrZhtmI2LnYqSDZhdmGINin2YTYp9iz2KrYsdin2KrZ
itis2YrYp9iqINmE2YXYs9in2LnYr9ipINin2YTZhdik2LPYs9ipINi52YTZiSDYqtmE2KjZitip
INin2K3YqtmK2KfYrNin2KoNCtin2YTYqtmI2LjZitmBINin2YTYrdin2YTZitipINmI2KfZhNmF
2LPYqtmC2KjZhNmK2KkuDQrYqtmC2YrZitmFINmF2K/ZiSDYp9iz2KrYudiv2KfYryDYp9mE2YXY
pNiz2LPYqSDZiNiq2LfZiNmK2LEg2YXYrti32Lcg2LnZhdmE2Yog2YrYs9i52Ykg2YTYpdmG2LTY
p9ihINmG2LjYp9mFINmF2KrZg9in2YXZhA0K2YTYpdiv2KfYsdipINin2YTZhdmI2KfZh9ioLg0K
2KrYr9ix2YrYqCDZiNiq2LfZiNmK2LEg2YjYqtmI2KzZitmHINin2YTZhdmI2KfZh9ioINio2KfY
s9iq2K7Yr9in2YUg2YXYrNmF2YjYudipINmF2KrZhtmI2LnYqSDZhdmGINmF2YbZh9is2YrYp9iq
INin2YTYqti32YjZitixINin2YTZgdi52ZHYp9mELg0K2KrYtdmF2YrZhSDZhti42KfZhSDZhdiq
2YPYp9mF2YQg2YTYpdiv2KfYsdipINin2YTZhdmI2KfZh9ioINio2YXYpyDZitiq2YjYp9mB2YIg
2YXYuSDYp9mE2KfYs9iq2LHYp9iq2YrYrNmK2Kkg2KfZhNmF2KTYs9iz2YrYqS4NCtin2LPYqtiu
2K/Yp9mFINij2K/ZiNin2Kog2YjYqtmC2YbZitin2Kog2K3Yr9mK2KvYqSDZiNmB2LnZkdin2YTY
qSDZgdmKINiq2YLZitmK2YUg2KfZhNmF2YjYp9mH2Kgg2KfZhNmF2K3YqtmF2YTYqS4NCtiq2LfZ
iNmK2LEg2KPYt9ixINi52YXZhCDYp9mE2YPZgdin2KHYp9iqINin2YTYqtmKINiq2LnYqtio2LEg
2KPYs9in2LPYp9mLINmE2KrZgtmK2YrZhSDZiNin2YPYqtiz2KfYqCDZiNiq2LfZiNmK2LEg2KfZ
hNmF2YjYp9mH2KguDQoNCg0KDQrZhdiz2KrZh9iv2YHZitmGINmB2Yog2LDZhNmDOg0KDQrZhdmI
2LjZgdmIINin2YTZgtmK2KfYr9in2Kog2KfZhNil2K/Yp9ix2YrYqS4NCtmF2K/Ysdin2KEg2KfZ
hNil2K/Yp9ix2KfYqi4NCtmF2LPYpNmI2YTZiCDYpdiv2KfYsdin2Kog2KrZhtmF2YrYqSDYp9mE
2YXZiNin2LHYryDYp9mE2KjYtNix2YrYqS4NCtmF2LPYpNmI2YTZiCDYpdiv2KfYsdin2Kog2KrY
t9mI2YrYsSDYp9mE2YXZiNin2YfYqC4NCtmF2K/Ysdin2KEg2YjYtNix2YPYp9ihINil2K/Yp9ix
2KfYqiDYp9mE2YXZiNin2LHYryDYp9mE2KjYtNix2YrYqSDZiNin2YTZhdiv2LHYp9ihINin2YTZ
hdio2KfYtNix2YrZhi4NCtix2KTYs9in2KEg2KPZgtiz2KfZhSDYpdiv2KfYsdipINin2YTZhdmI
2KfYsdivINin2YTYqNi02LHZitipLg0K2YXYqtiu2LXYtdmIINin2YTZhdmI2KfYsdivINin2YTY
qNi02LHZitipDQrYp9mE2YXZh9mG2YrZitmGINin2YTYsNmK2YYg2YrYtNi62YTZiNmGINmF2YbY
p9i12Kgg2KXYtNix2KfZgdmK2Kkg2YjYpdiv2KfYsdmK2KkuDQoNCsK3ICAgICAgICAg2YPZhCDZ
hdmGINmK2KzYryDZgdmKINmG2YHYs9mHINin2YTYrdin2KzYqSDZhNmH2LDZhyDYp9mE2K/ZiNix
2Kkg2YjZitix2LrYqCDYqNiq2LfZiNmK2LEg2YXZh9in2LHYp9iq2YcNCtmI2K7YqNix2KfYqtmH
INmB2Yog2YfYsNinINin2YTZhdis2KfZhC4NCg0K2YjYqNmH2LDZhyDYp9mE2YXZhtin2LPYqNip
INmK2LPYudiv2YbYpyDYr9i52YjYqtmD2YUg2YTZhNmF2LTYp9ix2YPYqSDZiNiq2LnZhdmK2YUg
2K7Yt9in2KjZhtinINi52YTZiSDYp9mE2YXZh9iq2YXZitmGDQrYqNmF2YDZgNmI2LbZgNmI2Lkg
2KfZhNi02YfYp9iv2Kkg2YjYpdmB2KfYr9iq2YbYpyDYqNmF2YYg2KrZgtiq2LHYrdmI2YYg2KrZ
iNis2YrZhyDYp9mE2K/YudmI2Kkg2YTZh9mFDQoNCtio2LHYp9mF2Kwg2KfYrtixINmJINmK2KrZ
hSDYp9mG2LnZgtin2K/Zh9inDQoNCg0KDQrYp9mE2KjYsdmG2KfZhditINin2YTYp9it2KrYsdin
2YEg2YHZiiDYpdiv2KfYsdipINil2KzYsdin2KHYp9iqINin2YTYudmF2YQgKEJQTSkNCg0KDQoN
Cg0KDQrYtNmH2KfYqSDZhdiv2YrYsSDYqNix2YbYp9mF2Kwg2YXYrdiq2LHZgSBQZ01QDQoNCg0K
DQoNCg0K2LTZh9in2K/YqSDZhdit2KrYsdmBINin2K/Yp9ix2Kkg2LHYtNmK2YLYqSBQTUktQUNQ
DQoNCg0KDQoNCg0K2LTZh9in2K/YqSDZhdit2KrYsdmBINin2K/Yp9ix2Kkg2YXYrtin2LfYsSBQ
TUktUk1QDQoNCg0KDQoNCg0K2LTZh9in2K/YqSDZhdit2KrYsdmBINin2YTYp9iv2KfYsdipINin
2YTYp9iz2KrYsdin2KrZitis2YrYqSBTTVANCg0KDQoNCg0KDQrYtNmH2KfYr9ipINmF2K3Yqtix
2YEg2KfZhNiq2K7Yt9mK2Lcg2KfZhNin2LPYqtix2KfYqtmK2KzZiiBTUFANCg0KDQoNCg0KDQrY
tNmH2KfYr9ipINmF2K3ZhNmEINij2LnZhdin2YQg2YXYrdiq2LHZgSBQQkENCg0KDQoNCg0KDQrY
pdi52K/Yp9ivINij2K7Ytdin2KbZiiDYp9mE2KrYr9ix2YrYqA0KDQoNCg0KDQoNCtmE2YXYstmK
2K8g2YXZhiDYp9mE2YXYudmE2YjZhdin2Kog2YrZhdmD2YbZgyDYp9mE2KrZiNin2LXZhCDZhdi5
INin2K/Yp9ix2Kkg2KfZhNiq2K/YsdmK2KggIOKAkyDYp9mE2K/Yp9ixINin2YTYudix2KjZitip
DQrZhNmE2KrZhtmF2YrYqSDYp9mE2KfYr9in2LHZitipDQoNCuKAoiAgICAgICAgINis2YjYp9mE
IOKAkyDZiNin2KrYsyDYp9ioIDogMDAyMDEwMjM5OTA5MDENCg0KLS0gCllvdSByZWNlaXZlZCB0
aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91
cHMgItix2KTZitipMjAzMNmE2YTYr9in2LEg2KfZhNi52LHYqNmK2KkiIGdyb3VwLgpUbyB1bnN1
YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0
LCBzZW5kIGFuIGVtYWlsIHRvIDIwMzAtbW9oYW5uZGFoYWQyNCt1bnN1YnNjcmliZUBnb29nbGVn
cm91cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBz
Oi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC8yMDMwLW1vaGFubmRhaGFkMjQvQ0FDJTJCdlk5
RGRjNExaS04xemlEWFpkOF84bUFxamFLeFhqNiUyQmdtcXZlUlZHUFVrQXVZdyU0MG1haWwuZ21h
aWwuY29tLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
