Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA1BD0D88
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 13:19:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D51F88303;
	Wed,  9 Oct 2019 11:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ylAh36RNAt5G; Wed,  9 Oct 2019 11:19:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B919B882DD;
	Wed,  9 Oct 2019 11:19:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6F111BF853
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 11:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E36AF85045
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 11:19:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mEgMMwfOrCa5 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 11:19:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F79184E97
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 11:19:07 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id j11so2436787wrp.1
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 04:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=3j46mXdOXkjvBlsH069199xXKhaBgsUEkFzL15Wc8Q4=;
 b=O0PEs35yXOjOQynNRFZXdkCUIz9SHZV1w6pvDQvBWvhgGrjl8oBwU1qM5mmNvxTce6
 jvPad3vh361bzI5owpVoSvmhG/OsB16Y+NEfiQ+EZxYvVNBBVDTKoy2UB1eaxsIGIonl
 Uhn6eAXHrd3mr4ha58HAkQJPIQMEltoc0iudDPzXst6OfV+os410+XjwVRkIIIuX/tl5
 6hYrjXsPH44InWJtMAEZmE8qnPvRPK6RatWhQKDHoK9VCvpooXDS2rLvj+uhqZmVXfsR
 oMeOTxVfrLPBGsz+MkmSQNB6MjdoA2Vbrnoa/cvQUa1o/RMV8eEiO0mWUIhZC2eqVIPc
 lB6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=3j46mXdOXkjvBlsH069199xXKhaBgsUEkFzL15Wc8Q4=;
 b=R4V+bdeTQXmcsZorGr/aFlwFvd1Cpx6gqVu9W+kjf1FGQjlXvkJHoMQUrP8RhP28ld
 g/dN9U3C1WSaufTu9kDJbRt3Dm9jGd8nQ283krEJ2Xdm4NFuddo8ZIU9tt4yUDGusYS0
 eunNmxPq+JarG7SZ/f83bPTSOG8NAXAHn86Fv8QBpS55sV16my2S/BAvwGe9znsvxGFL
 nGTrJ5jWx0jNhoc0Sr4oxYwqd8/dwkquBvdBt6+5v26YVhwlGEaeXiQJTEBaC+pXAt1x
 FfIQE6ocv4lHxHDSiPIXimuS4ij87PC8RAjjpkCnzscuT17UqhGIyPvRBguTastSbZ4o
 WmbQ==
X-Gm-Message-State: APjAAAV5wT7SkjUEdi7IUvR2JS7XK6otVCzxoCAhMiMQCJ6Rc2TFmdm9
 wzhdkDWxArCyCsO2AzeJ/A==
X-Google-Smtp-Source: APXvYqxHhRMzvbIamqQs3VG2tEkbl4yVMq1izTGYczcIFTm0A8cVQ4m4ghwBzPqZYMei0uS159g+bg==
X-Received: by 2002:adf:f50a:: with SMTP id q10mr2346938wro.157.1570619945202; 
 Wed, 09 Oct 2019 04:19:05 -0700 (PDT)
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.gmail.com with ESMTPSA id
 z4sm2043915wrh.93.2019.10.09.04.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 04:19:04 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Wed, 9 Oct 2019 12:18:55 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Add comment to lock
 declaration
In-Reply-To: <alpine.DEB.2.21.1910072254290.2578@hadrien>
Message-ID: <alpine.LFD.2.21.1910091215360.15948@ninjahub.org>
References: <20191007205248.24466-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910072254290.2578@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Jules Irenge <jbi.octave@gmail.com>, Larry.Finger@lwfinger.net,
 gregkh@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Mon, 7 Oct 2019, Julia Lawall wrote:

>
>
> On Mon, 7 Oct 2019, Jules Irenge wrote:
>
>> Add comment to spinlock declaration to fix warning issued by checkpatch.pl
>> "CHECK: spinlock_t definition without comment".
>
> Since it is not apparent from the shown code, it would be helpful to
> describe what evidence you used to choose this comment.
>
> thanks,
> julia
>

Thanks for your feedback, I will leave as it is following the advice of 
one of the maintainer. I thought a general term of protecting interrupt 
might be appropriate.

Kind regards
Jules


>> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
>> ---
>>  drivers/staging/rtl8712/drv_types.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
>> index 0c4325073c63..960d8709aada 100644
>> --- a/drivers/staging/rtl8712/drv_types.h
>> +++ b/drivers/staging/rtl8712/drv_types.h
>> @@ -160,7 +160,7 @@ struct _adapter {
>>  	int pid; /*process id from UI*/
>>  	struct work_struct wk_filter_rx_ff0;
>>  	u8 blnEnableRxFF0Filter;
>> -	spinlock_t lock_rx_ff0_filter;
>> +	spinlock_t lock_rx_ff0_filter; /*spinlock to protect interrupt request*/
>>  	const struct firmware *fw;
>>  	struct usb_interface *pusb_intf;
>>  	struct mutex mutex_start;
>> --
>> 2.21.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191007205248.24466-1-jbi.octave%40gmail.com.
>>
>
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910072254290.2578%40hadrien.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
