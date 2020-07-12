Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5695621CAE3
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Jul 2020 19:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC66688AF5;
	Sun, 12 Jul 2020 17:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8FIPEfj4TYi; Sun, 12 Jul 2020 17:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6301D88586;
	Sun, 12 Jul 2020 17:56:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F34C1BF398
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 17:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 100CE893C2
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 17:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yHZI9YO6nBOL for <devel@linuxdriverproject.org>;
 Sun, 12 Jul 2020 17:56:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com
 [209.85.161.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F3A32893C1
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 17:56:00 +0000 (UTC)
Received: by mail-oo1-f65.google.com with SMTP id z127so1943241ooa.3
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 10:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cQ21waqM1AuqRfe+8jZIqLE+yEZAS6raLrScXTkrSoM=;
 b=sunYpunee7th1fO9elWq7ois0/PafjOirwsYFLUKsvrLrQQSh1dP6o/vPx8pLltTDk
 ClHO9zj7dTI4ozgHdPZru/xrjmJTx1PrVaMsEtWUvr2NzD9uaPqfb8Legfd8SfZf5bfe
 IAfvlhxolFotQdFbug2ZR6hNWLWNwRhHH3AcjueqanYYfW6hfaMpXqVztSoPAdQcpXG1
 Ke+9XswkxqvP9Xd0EyuSlG7ESCffWZmJDoNTRiFuc/qIJuxch1SA9tqRPM1d2OoU6VZm
 ch7aHBKuaWLEWCEITlrTShY5X4sx0ZsU+CEhb79mdqFelrLXZzzjL7xlcunM1fRSpKV3
 sKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cQ21waqM1AuqRfe+8jZIqLE+yEZAS6raLrScXTkrSoM=;
 b=U6nmc+cPW1ZJKsi82Pj64yhHYg7TNmnUg2arN1z6Eva3NpLRLAKJVjuKPLAdzTu9Ha
 SKTMlDAFbg4GTqL8DIEy63NaA+QVgfSxNiMmVvNoUEvf1mIBGEkP1uPrIlSQnms2/LRn
 2Q+sMIMz2nejSw7Mk++JIyv4MKo1XxKX2f2tY4IHxl4BgmN8GQ0I7tuz6lEpxwcbSskP
 WRqQGscN7Wlx9Wpe1TomHQlg5QivRihPVXtoTsZTgcWMKuBCBDu8TpUkJwqVY6I/S8zw
 VIPAv8eXJQctIRQTRGae99mA1eox/eWigazg+6WtpbVOdTl3/V43ZaCn9SkUP4WLqXPG
 RMUA==
X-Gm-Message-State: AOAM5316J6LFTILd5m1GIRU2R1TIGPktbUfgeP3H8zWTHSK1PE3CVdBT
 tGwDu0QDeSryMfauTuY6KR4=
X-Google-Smtp-Source: ABdhPJyAUOziNxehnJvcQ8wGW707FtHHXWNYmUbVUXRQz57vsv8dRnqWdSbQUC2RuTt0ijU8W1QIGw==
X-Received: by 2002:a4a:9552:: with SMTP id n18mr27075101ooi.1.1594576560193; 
 Sun, 12 Jul 2020 10:56:00 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id s15sm2568706otg.24.2020.07.12.10.55.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jul 2020 10:55:59 -0700 (PDT)
Subject: Re: [PATCH] staging: r8188eu: remove unused members of struct xmit_buf
To: Ivan Safonov <insafonov@gmail.com>
References: <20200712123821.553420-1-insafonov@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <895d5f76-832f-62a0-fc82-79b26ca104d4@lwfinger.net>
Date: Sun, 12 Jul 2020 12:55:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200712123821.553420-1-insafonov@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/12/20 7:38 AM, Ivan Safonov wrote:
> Remove unused members of struct xmit_buf: alloc_sz, ff_hwaddr,
> dma_transfer_addr, bpending and last.
> 
> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> ---

Have you tested this change? Previously with this driver, an unused quantity was 
removed from one of the structs and the driver failed. Apparently, the alignment 
of some other quantity was affected. I do not think that this change would have 
that affect; however, you should be testing whenever the changes are more than 
cosmetic.

Larry

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
