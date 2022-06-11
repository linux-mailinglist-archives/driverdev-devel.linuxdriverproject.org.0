Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4154354747D
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jun 2022 14:25:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B9414256A;
	Sat, 11 Jun 2022 12:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rJPQLYIFcJa9; Sat, 11 Jun 2022 12:25:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 06C1C42567;
	Sat, 11 Jun 2022 12:25:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4FD971BF418
 for <devel@linuxdriverproject.org>; Sat, 11 Jun 2022 12:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3F7D484326
 for <devel@linuxdriverproject.org>; Sat, 11 Jun 2022 12:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YXtRjkEonC-u for <devel@linuxdriverproject.org>;
 Sat, 11 Jun 2022 12:25:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A7605842D7
 for <devel@driverdev.osuosl.org>; Sat, 11 Jun 2022 12:25:28 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id g25so2679341ejh.9
 for <devel@driverdev.osuosl.org>; Sat, 11 Jun 2022 05:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=CmIbnODQRsOizVWNGgX9aUljNVgn5oj668urhy+VNPo=;
 b=UWIvtDFcG3LUtm7m3+U5CqnRFXQvn0mDdGnIIRe2T8YJrMbTuocvWlUXIG6aIfFEvd
 gr1sJk+o9NVXiQz/gNabW7uN3i7FmOusiBFqVmAqutF31fJk1+b+RrRfL3Ea0m/WZXAC
 De9gc6myzCJOBtY6UCFKJ13WOarIOcx8xAmqCEdcDDks4bAyrxSYdZuuhuAOeiup7ehH
 Jybzh8NGtOjLaB/JrzL1vd14rH9RrBcTFV08Q5VJ436vg4/5xzJTOm9PmFZMcucsb9a+
 JJPuUIkm+9bNGFyPoDSN+881w4FRmS3GVsiIpxtOWe/kXcWUxyvX8j+9Yc4eDQsOukT4
 Tc2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=CmIbnODQRsOizVWNGgX9aUljNVgn5oj668urhy+VNPo=;
 b=xLuwn4osNzEepmHhEVIFPr2mId9N6a2PofTxbRZj/Uc68J1Z17e5NOdzDJhA6uS1Pf
 ikgc6vwT76z9yLeIPf6MSchc383Xv9LU54d7P3Z5ui0PepG/zgh9Oauhpb21SV2MU20K
 AdtgDVk/zQIkWOF3xGnO07zC3P0n7Xw9gwdIu3EPc5+fas7FUaIzsUrhSYNCLsOCfH7x
 o6UOUzEUI7J1J7jKyMtrxhwTnMin/LCGnoHedtGDw2FNwNsIv5PQnGc4d1owTi7ZjvEV
 rvMksmUa0Z+4rz6PFoXTxNYEY2I3MRYkc/IhV1sl1UYkmDgbakxcrgrtWQUesnbh5UHa
 8bwg==
X-Gm-Message-State: AOAM530ILPYT+s+50YhFCQwKLykCYTw5G3jooWZxvqCh7SMOeXsHeN0w
 Cac26MmZ32bMO47je+DRk8glTt77EuP/zbcQ9/0=
X-Google-Smtp-Source: ABdhPJzFiCnRm9vztcZa3kQFvXwab22YLoRFmf8vhyN6N1DDFH/UdwIgx0f1OC2OjcNT2UmrHlliQqfVV3iCLCr/Lkk=
X-Received: by 2002:a17:906:5256:b0:711:ee4d:fbe4 with SMTP id
 y22-20020a170906525600b00711ee4dfbe4mr17311585ejm.312.1654950326505; Sat, 11
 Jun 2022 05:25:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:906:368d:b0:712:1bfe:edc0 with HTTP; Sat, 11 Jun 2022
 05:25:25 -0700 (PDT)
From: Stefano Passina <nasrayussuf234@gmail.com>
Date: Sat, 11 Jun 2022 05:25:25 -0700
Message-ID: <CAHd=YtkChM=7r_9sy9=LJsaKegsUr3LCADx2DVcvFWeMiEkcpw@mail.gmail.com>
Subject: =?UTF-8?B?R2zDvGNrd3Vuc2No?=
To: undisclosed-recipients:;
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
Reply-To: stefanopessina92@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkRpZSBTdW1tZSB2b24gMS41MDAuMDAwLDAwIOKCrCB3dXJkZSBJaG5lbiB2b24gU1RFRkFO
TyBQRVNTSU5BIGdlc3BlbmRldC4KQml0dGUga29udGFrdGllcmVuIFNpZSB1bnMgZsO8ciB3ZWl0
ZXJlIEluZm9ybWF0aW9uZW4gw7xiZXIKc3RlZmFub3Blc3NpbmE5MkBnbWFpbC5jb20KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
