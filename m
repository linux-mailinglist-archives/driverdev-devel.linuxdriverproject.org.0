Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E998257A65
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 15:29:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74AEA87A62;
	Mon, 31 Aug 2020 13:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lWD9aOvKhXYz; Mon, 31 Aug 2020 13:29:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0851787A11;
	Mon, 31 Aug 2020 13:29:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 550D41BF302
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 13:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51CC184587
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 13:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6cHjkP4Wiet0 for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 13:28:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6E4484578
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 13:28:54 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id x12so4695806qtp.1
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 06:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=o69Nac3LLMj5CDhyPqLcnP7WGq46U4gQb9HzFdG/MvE=;
 b=dGZjKog7uhJ10Hx92Szn03pULWVYkpf7Z+o3dPcWDqibEAAbm/EhMhGGBk+DTtloAO
 GGrHZL9faVzFqSj/O+hw/8kkHffHNQsUWoUQHOtVKlmc0Ni8Y2AsCpVccCg+McWXvrPy
 ZKphzuz9Qpq2A3E9dFBzCdM3pFV5joTtnx7+WXKEBEe17vqVfaKaGALuXZSOqW2yxlYS
 lxs8LWvsFh2bQj4cBokKU9vDcnI7yyjU+nj6hNBObgdebgq0AYqvih29CAa8V7jOUo5l
 2inIqNimMTNQHPZc8e0v2Wtb6MtTPSUWoEvWwQs/1+/hdUntFIZCt0zvq606Ekk0+xf+
 twCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=o69Nac3LLMj5CDhyPqLcnP7WGq46U4gQb9HzFdG/MvE=;
 b=b0e45UiDVWP63F5eeHe2Vgg9z8YfM9SomxEDACmJTmPbcnC7XC9pnLjOpQ6tUCfbCB
 serrkUH2qZek/yuQyL9iItgJfNWupFZYf7iLAEJHHGk2j90GOXwFlfeLZ7WrF0M64Tgl
 gPdHxoWCTqaP+zlIPn6p6PTZrHpFB3R9DdOT4B0PbSAZjJorEDOIiQfudsKdEFg3iktS
 8hrgW4zTsvSNUJgjTld0xruLdYTjPeahBPrqaEv9CY5VDvpxfybnLakhKG15iTbSQdp8
 TmD84ON2z04jrH5fbOULmRUIYgBIqCxRl+MjOjxrgRqdMK3Kk39pQb69lq6Z2xc4EfYz
 W0EQ==
X-Gm-Message-State: AOAM532WrbR6t6jNbvphQH9p3YPC3QZBO+ldOQohqiFD056NoNUM2AqB
 bIxr9vMtz7DeErq1TLUgabXHa1ONE3M2vVksmvM=
X-Google-Smtp-Source: ABdhPJwTFSiHahm3o5ErCNVDLMAHAbqY/gcm/j2QvEhnXbOIzGlMlfhm7c3nSP/0THni2bBQrZlMWoVhtj11v7fjHYw=
X-Received: by 2002:aed:2be2:: with SMTP id e89mr1267817qtd.298.1598880533509; 
 Mon, 31 Aug 2020 06:28:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:9088:0:0:0:0:0 with HTTP; Mon, 31 Aug 2020 06:28:52
 -0700 (PDT)
From: Miss Maris Avis <marie.avis11@gmail.com>
Date: Mon, 31 Aug 2020 13:28:52 +0000
X-Google-Sender-Auth: Lp5dY6VBzSh9_uvXRrOdBmPrOnY
Message-ID: <CAHeMND74gvswhr8n6PM-B6m0+kki=hqUKViD-A3Y_g7VjTw13g@mail.gmail.com>
Subject: Hello
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
Reply-To: marie_avis12@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Dear,

My name is Miss Marie Avis the only daughter of Mr. Gabriel Avis, my
Father was dealing in Cocoa and Timber in this country before his
death,  It is my pleasure to contact you for a business venture which
I intend to establish in your country. Though I have not met with you
before but I believe one has to risk confiding before you can succeed
sometimes in life.

I can confide in you for my brighter future since you are a human
being like me. There is this huge amount of Ten Million five hundred
thousand United States dollars. ($10.500.000.00) which my late Father
kept for me in a suspense account with one of the bank here in Abidjan
Cote d'Ivoire before he was assassinated by unknown persons, Now I
have decided to invest these money in your country or anywhere safe
enough for me.

I want you to help me claim this fund from the bank and have it
transfer into your personal account in your country for investment
purposes in your country in these areas:

1). Telecommunication
2). The transport Industry
3). Five Star Hotel
4). Tourism
5). Real Estate

If you can be of assistance to me I will be pleased to offer you 20%
of the total fund.

I await your soonest response.

Respectfully yours,
Miss Marie Evis
Tel: +225597438528
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
