Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D10F231050
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 19:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8D92C2051A;
	Tue, 28 Jul 2020 17:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WUZHPannmOsL; Tue, 28 Jul 2020 17:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D70052039C;
	Tue, 28 Jul 2020 17:00:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39D101BF29E
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 17:00:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3632186A07
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 17:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4D8LLuN6bV6x for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 17:00:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A1F1186917
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 17:00:12 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k6so18087308oij.11
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 10:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TZpDclNNZRMgFEz0oqb9LeYPT9K0M3xP45ARWm+IZRA=;
 b=o0JSIB1dljduACzj5af9gW2AzX15u3MTM+ZG5sk5CTeVpq4IM2R+EmK49qFNJdL0K3
 XK2xpayESCykGC99u5VkdMBpve8pH+8YDA8ovL1P2W3hyTeiP/vG+KgnGp+IH5lc1Qhj
 RNd5TpSq+um87qxs5A8gyQw8qjnJyezqxKZ4RTvNyepoAgEcbcofRUqrVcYkKfmjuXO9
 Yie1Q20Tncptz8mlve/WpscL/Xh7YvTk6+hflZ0oT2EUhsLmhbZTHgkeXD8lgOd4Vx3Z
 oKMmRstyCCl4uqnjVT6+Y4o+7HIjdZdJNSqq9MnAaTI+AyRYwgBvr4zBbx3+EGgCkt75
 bkgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TZpDclNNZRMgFEz0oqb9LeYPT9K0M3xP45ARWm+IZRA=;
 b=SFC1yocSFAhB69TuF4/oMeU2hN7FO4hYXicrb4MTEt3DEEzGRjD4SR4i5EsmHgljmu
 V7VdSzTaR7OLDRe+iguzFrRn4yY0rW5sHGkSLko6jLCPiQgbVfJVQuR58UJKrznQ4x89
 53bHcUK7WdFIbdz9PFoBEdTpju9cB3/hZvw/CGL44M0RUzQyBQMhEMKBUJ0jKDafkQ+X
 mhj0KWpk9bU+dfmdU4U8lG6Da+/k3HKjw4c+9ciinuze8jvub3OFIgCEE1vMy9AQYfjP
 U/wuXe2ydDA92XIrJHtKAvtViuUnscEw77kG7QGCzKIFXvw/iuZJFwsNXGvsy0XrRYBC
 O83g==
X-Gm-Message-State: AOAM530Wm26sadDH2TSyr5ISYzkvEPmwW6gRQsHQpnirpbUSAtj9YuPy
 tIJfv9qpC2e9+d7SyN5r/IsY8EtzcSt28yx7SDg=
X-Google-Smtp-Source: ABdhPJy0vU1aOpVRhjMrvC2AGOeItsZVY+CvFDtcW5Ntc3n2wH8ZJdKELj2heiQzdzMSULdMXvmDRir7wn0YcSSAW+M=
X-Received: by 2002:a54:4f1a:: with SMTP id e26mr1765736oiy.171.1595955611873; 
 Tue, 28 Jul 2020 10:00:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200728143004.3228-1-dhiraj.sharma0024@gmail.com>
 <20200728145419.GA3537020@kroah.com>
 <CAPRy4h1Xs1JpQinnWm04dOi07Ch0RLL0U4Z5DDCKHmombXE0sA@mail.gmail.com>
 <20200728155311.GA4178776@kroah.com>
 <CAPRy4h2Zbw=QwJ7=0+FzGnK_o1esn2GTRSuv5ZE30Vu=Oj=x=Q@mail.gmail.com>
 <20200728165820.GA42656@kroah.com>
In-Reply-To: <20200728165820.GA42656@kroah.com>
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Date: Tue, 28 Jul 2020 22:29:58 +0530
Message-ID: <CAPRy4h1byz5_r0GdEagvx6Sini3P3uA5Mm4K6AdmM4wHjk+y9A@mail.gmail.com>
Subject: Re: [PATCH] media: usbvision: fixed coding style
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, arnd@arndb.de, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, stern@rowland.harvard.edu,
 jrdr.linux@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Alright sorry, I will ignore this patch and will commit the new patch
in another file.


On Tue, Jul 28, 2020 at 10:28 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jul 28, 2020 at 10:13:22PM +0530, Dhiraj Sharma wrote:
> > > As the bot said, only do one type of thing per patch, and "fix all
> > > checkpatch errors/warnings" is not one type of thing.
> >
> > So should I send a fresh patch with minimal fixes? instead of replying
> > to this mail with [PATCH 01]
>
> Why are you ignoring what Hans said?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
