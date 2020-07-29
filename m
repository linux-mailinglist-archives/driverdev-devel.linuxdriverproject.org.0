Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF12231928
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 07:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EF5086A70;
	Wed, 29 Jul 2020 05:37:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2zFQ41l8CjW; Wed, 29 Jul 2020 05:37:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE5458695B;
	Wed, 29 Jul 2020 05:37:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 20CD51BF37F
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 05:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0BAF2228B0
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 05:37:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XQ6nVjpzSmTG for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 05:37:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 1389220784
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 05:37:11 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id c25so16660960otf.7
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 22:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zuXA/WN2nlx83H9srxCo19LElvlaPaco/SoR1kFJVg0=;
 b=N++YDTwvJnJ4s9r+Jtio+v9Lqd0ElZdY+lozS2sh8rD0mRAl5vOSOdIa5XksrJNCX2
 Ok4Ezdg+kt4V6qADIsrcgGbDTKgpp6q5ywl/O+oX+QZ7/eEufWO2NrU+jeC34ifuovcv
 tHybsNBp9rQVu/R1nrBFcD8Y/qihGNGJvU2zQosLLaGwmridAZ+VY4E/5n7H5lLhGunZ
 Qn3GQDrhxsvtkNn4PV4CfecXXw0oqDZ9LwMn965d/xWHPpQ3WSrP9mjUwxVQGMRxHi6s
 Wc05RPcQNj1GjgL7gh9q3CuGrHtQrA8xt/DpQxHF7h0yH4qcp55qNBqL6k04cgiMu/nu
 ICVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zuXA/WN2nlx83H9srxCo19LElvlaPaco/SoR1kFJVg0=;
 b=fAMaTp1pE0fuqOrYAy3P5wxoUrXG9HoJmSYXt+gfp6MyiqUn2d1TINmMBJ8+d1T2FN
 ZaKGtR3vvbBCpwe3pQO93Zh6uVLOIECQp0rDLuxPjb86iDBQF9FV07LB+Qe1XKl6HW0F
 amSmNkanJUFYiU4U8mh3eIET2deSSzL8Ty1Qlj5i0pIuBWKe3bqtOixYF8JcQyWE2Lty
 +sHSG/74mwm2EHtXKCi5iuZ0sRNW0MwdqHPqUI6D1g++L/e8CCo+oZcFRk/hMyb1z4eI
 PWja2qXqVE/G9Id0dgsDFLjnGphQVloIvMavXAHPLXddmGYaosI1J0/AnrQIvSBfLUwO
 cgvA==
X-Gm-Message-State: AOAM530htp7phenoPE7+Yh6n2J7uUVziUwkkaXGGCEmSXIyX+G0miaTR
 +oW7GfNtMiv6dIXivQZxFlPaV3OTsMDo64oAc4A=
X-Google-Smtp-Source: ABdhPJwXzoU/5XehKtvMsRaxuN/8/3yEG7bdRXxBKM15dtcQ6WOP64UKEj+QhDgL5ElWpRzZHNDVFLuaKyXy9fTHL2A=
X-Received: by 2002:a05:6830:4c8:: with SMTP id
 s8mr26530231otd.368.1596001030180; 
 Tue, 28 Jul 2020 22:37:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200728182610.2538-1-dhiraj.sharma0024@gmail.com>
In-Reply-To: <20200728182610.2538-1-dhiraj.sharma0024@gmail.com>
From: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
Date: Wed, 29 Jul 2020 11:06:56 +0530
Message-ID: <CAPRy4h2Kzqj449PYPjPFmd7neKLR4TTZY8wq51AWqDrTFEFGJA@mail.gmail.com>
Subject: Re: [PATCH] staging: qlge: qlge_dbg: removed comment repition
To: manishc@marvell.com, Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

 I know that I should ask for reviews etc after a week but the change
is for my eudyptula task and until it doesn't get merged little
penguin will not pass the task for me so please look at it.


Thank You
Dhiraj Sharma

On Tue, Jul 28, 2020 at 11:56 PM Dhiraj Sharma
<dhiraj.sharma0024@gmail.com> wrote:
>
> Inside function ql_get_dump comment statement had a repition of word
> "to" which I removed and checkpatch.pl ouputs zero error or warnings
> now.
>
> Signed-off-by: Dhiraj Sharma <dhiraj.sharma0024@gmail.com>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 985a6c341294..a55bf0b3e9dc 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -1298,7 +1298,7 @@ void ql_get_dump(struct ql_adapter *qdev, void *buff)
>          * If the dump has already been taken and is stored
>          * in our internal buffer and if force dump is set then
>          * just start the spool to dump it to the log file
> -        * and also, take a snapshot of the general regs to
> +        * and also, take a snapshot of the general regs
>          * to the user's buffer or else take complete dump
>          * to the user's buffer if force is not set.
>          */
> --
> 2.17.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
