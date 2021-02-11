Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A5333319075
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 17:57:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78221874A7;
	Thu, 11 Feb 2021 16:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOVty+cXDpEA; Thu, 11 Feb 2021 16:56:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F93187446;
	Thu, 11 Feb 2021 16:56:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 829461BF3E1
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 16:56:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7FD9B8746A
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 16:56:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KFD8cYDP9nXW for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 16:56:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A017C87446
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 16:56:54 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id 190so6184588wmz.0
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 08:56:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:content-transfer-encoding:to:cc:subject:from:date
 :message-id:in-reply-to;
 bh=RaaB3Jkzo+yQ+e/2ibVN63mU1UEh4se1oCH6ILUrCb4=;
 b=WEuKBYgLotIPM5/ZYwHT1cwEkXlEpWLkWPYPzNQU3rDPuKygP455iCE57+dKRSRzoT
 iAcXxzx+ExX2iaiQoVWotxOtc2Oy4a0PjMWc+Jhf+7MlYm91ctesPadlNQ3l7jEwUg5y
 MKZib62Y8JY6aW1T2f5GUqjRStxsCbfjKc3v8e3zw2aWm8ZsBIoJq+nKl+uS5KfDMxEt
 p1vzUQxbNHK4J5wXmHTkEW9mgMHQaB490OzQOPZ+9Id6PdizAoAf2LSxZkZYHf5By4Lo
 yMTnAHKwWO6KpTbU6v4hmyClfNK36z7Hvi35c9TZP7Yqg1Yi6ee8XtxADObKtDPFSlf1
 YCpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding:to:cc
 :subject:from:date:message-id:in-reply-to;
 bh=RaaB3Jkzo+yQ+e/2ibVN63mU1UEh4se1oCH6ILUrCb4=;
 b=ganMCnMfwOOO7eTS039FOuqblWlE+HO3YAkAGmQBGR5h3lmiuFXu31QayGdSURlw1o
 IrqHij61NiHEpjjRLG7C16sZvA9SSoIZBX/2JfXKZO1HnfnEOnngNu5b/BlcutPba/Ji
 1FLLPmxinuSosE/K0w338xHX44ZicJxPeWDlnv4yzqXclU+doekOA7XUFu/2aSLuuWfu
 nRPVLobpBUhzd+GjSyngOrQwo+a4c3E1Lzd/nWyAf/qokiGc+27j99PU05OHtOe1drtf
 No6LOFqYDHpaqzFoOUfOnuFRaxJkmnABNg16n6ZUUtWBga0JQvrgTL/iNRCHF35RIUuw
 7u8Q==
X-Gm-Message-State: AOAM530Vn4yYI3DLOCDfgUiE0ubsLVr2JQAU5ho67Uhsb9LJxxtVWElR
 SxgBSGMp8tYHQRtmdLciSz9VOpJQLyrMaA==
X-Google-Smtp-Source: ABdhPJz4VWefUIAXXR+3xgZv7fIUmv90cM2APiqaCMbWrWNm/HrD6RlJPk+GLvvfPtwuxRja+iR9OA==
X-Received: by 2002:a1c:ab88:: with SMTP id u130mr6253629wme.185.1613062612922; 
 Thu, 11 Feb 2021 08:56:52 -0800 (PST)
Received: from localhost ([154.72.150.57])
 by smtp.gmail.com with ESMTPSA id t74sm174450wmt.45.2021.02.11.08.56.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Feb 2021 08:56:52 -0800 (PST)
Mime-Version: 1.0
To: "Greg KH" <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wlan-ng: Fix comments typos
From: "Mairo P. Rufus" <akoudanilo@gmail.com>
Date: Thu, 11 Feb 2021 17:55:18 +0100
Message-Id: <C96UXUQZSWD6.1BZ2DYOVBDNYL@uncertain>
In-Reply-To: <YCQSKNYU7zhcKHHl@kroah.com>
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
Cc: devel@driverdev.osuosl.org, trivial@kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Hi,
>
> This is the friendly patch-bot of Greg Kroah-Hartman. You have sent him
> a patch that has triggered this response. He used to manually respond
> to these common problems, but in order to save his sanity (he kept
> writing the same thing over and over, yet to different people), I was
> created. Hopefully you will not take offence and will fix the problem
> in your patch and resubmit it so that it can be accepted into the Linux
> kernel tree.
>
> You are receiving this message because of the following common error(s)
> as indicated below:
>
> - You did not specify a description of why the patch is needed, or
> possibly, any description at all, in the email body. Please read the
> section entitled "The canonical patch format" in the kernel file,
> Documentation/SubmittingPatches for what is needed in order to
> properly describe the change.
>
> - You did not write a descriptive Subject: for the patch, allowing Greg,
> and everyone else, to know what this patch is all about. Please read
> the section entitled "The canonical patch format" in the kernel file,
> Documentation/SubmittingPatches for what a proper Subject: line should
> look like.
>
> If you wish to discuss this problem further, or you have questions about
> how to resolve this issue, please feel free to respond to this email and
> Greg will reply once he has dug out from the pending patches received
> from other developers.
>
> thanks,
>
> greg k-h's patch email bot

After double checking, I still can't figure out what I did wrong. I'm
sorry for abusing your time, but can you help me on this one?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
