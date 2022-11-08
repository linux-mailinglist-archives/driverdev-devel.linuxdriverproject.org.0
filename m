Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9273262118F
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Nov 2022 13:56:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E6E340496;
	Tue,  8 Nov 2022 12:56:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E6E340496
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zh5ooqmoftLZ; Tue,  8 Nov 2022 12:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 62CEE401A0;
	Tue,  8 Nov 2022 12:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62CEE401A0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C01DB1BF280
 for <devel@linuxdriverproject.org>; Tue,  8 Nov 2022 12:56:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9BD7440496
 for <devel@linuxdriverproject.org>; Tue,  8 Nov 2022 12:56:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BD7440496
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 07_YVElgKC2u for <devel@linuxdriverproject.org>;
 Tue,  8 Nov 2022 12:56:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A26DC401A0
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A26DC401A0
 for <devel@driverdev.osuosl.org>; Tue,  8 Nov 2022 12:56:40 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id o13so4011804pgu.7
 for <devel@driverdev.osuosl.org>; Tue, 08 Nov 2022 04:56:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=P4LL+lFpzMXS4wI0B/x88J7/A0eQFezOV4JEkHlj+xF4kWDDrFgjf5+e3nneLglxJt
 MaXPPOK3aZrPQTKtX7CJ4yF57SsOT67Zy76+pdeFE3f2vCws4Rc99HAgIM4BwjYtDfPo
 4YVaKR1kw2VEI8PiTLkLyZptF0gOo682cyG4V2dAekReR3VRQqCSb7K4puSs/GPOQGkO
 UcKkXsmzm/tNt5zgorKD76dgYljn2/6a94w8F1gKzo9/rNhskNohNvjLcHzunsV3RjOP
 LkhcknFSQ8l/MquKG7mDqSPDwsXKRpf+nQdFhE+lhhRWl79g78FFTWOhEp+RpmOjzsAr
 bwKQ==
X-Gm-Message-State: ACrzQf18PhXE4paAE9vSZoUMt/6KMpr0ddKOSJnZkU3CWaHC38SZ14pB
 TZxL5rqVVwJgdp+v0b6lJXxeX+wbOUqZi318iPK8b7MxqdmHbg==
X-Google-Smtp-Source: AMsMyM47asvldMpoM0ROtwfWLJk0+BVFoDAvZ7mlZ7MA+eUxVUI7Ob1Qhi7lq/JfYR+oSrrUrcWx7YNNrhT+6a48LhE=
X-Received: by 2002:a05:6a00:a15:b0:56e:9b2b:60dd with SMTP id
 p21-20020a056a000a1500b0056e9b2b60ddmr21642296pfh.35.1667912199238; Tue, 08
 Nov 2022 04:56:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:c394:b0:352:4c7b:293f with HTTP; Tue, 8 Nov 2022
 04:56:38 -0800 (PST)
From: "Mr.Abraham" <petersina60@gmail.com>
Date: Tue, 8 Nov 2022 12:56:38 +0000
Message-ID: <CAAxicr-CeSEiGtY8R5_hLEaK=UpJO__8n7i1wm9As8EZv4UBYQ@mail.gmail.com>
Subject: Greeting
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=SzBlYeGeT15Xra75w9IZDBjQ7Da3XKSmRdlnDJDYrko=;
 b=EFgW4SQ+oSiQJ6Kjd5A+NZYXZGi7rqO23OyNVo2feKzAIu1AUrGa/YxGtVwUZzX1ZA
 5AOzy89yh/hA0bl9zXjPxkNdCLNUw5tMPqb7ejP2CsBIaKwE9CvpBIN5dXspZ9LqGB6I
 UgD5T+NmbN986NwGyzzsFdKhHhzqZFrK1NmUXKDTqdsfPurfCeG0pMrNqEwvf99TqXAU
 vGZi9B4dR781xe0B+GDcl8+7k4WPH1jdUIWnGp/OwGBZ4oqks05RpAu6G6xppjCWqgl6
 NwRPsLa/87OJ3Wk2s3g+biCrUomO8iA4+3+JDPErh1spNmojzkU/vNSeYKf1B/WNPNPe
 zgXw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=EFgW4SQ+
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
Reply-To: mr.abraham022@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Greeting, Did you receive the letter i sent to you. Please answer me.
Regard, Mr.Abraham
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
