Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7DF3FE291
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Sep 2021 20:54:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE69B40305;
	Wed,  1 Sep 2021 18:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W41ZsmfGLm-Q; Wed,  1 Sep 2021 18:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02A78402C4;
	Wed,  1 Sep 2021 18:54:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 157731BF297
 for <devel@linuxdriverproject.org>; Wed,  1 Sep 2021 18:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0BAE2402C4
 for <devel@linuxdriverproject.org>; Wed,  1 Sep 2021 18:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lwbAU8aDiLdK for <devel@linuxdriverproject.org>;
 Wed,  1 Sep 2021 18:54:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2872040210
 for <devel@driverdev.osuosl.org>; Wed,  1 Sep 2021 18:54:17 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id t4so524276qkb.9
 for <devel@driverdev.osuosl.org>; Wed, 01 Sep 2021 11:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itfac-mrt-ac-lk.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yACBHeKeTEMDk9G3lLdGdDWvtaeZqYr0jQBUvqwglB4=;
 b=Idwyh/ZOPXWdXddScG9pysT9Y1D20q4/aaYdSHfPuGvxdq8UBrqgS0gGKzb2RyhlFG
 1ixEQaGyJhPCSvAIC9kVBRrsdpYew405vHVNIMYDMr2eCGTJT5aNsIennOISX/1fSbLB
 vw0hxgb9xxUjp5BnURN8EsrzaTSVLcoqF18z4bqyAsWyeb4EZJdmVa1YIGjA5BKRW83M
 c+R0ypRvgnYpol8jKW5URb6aIZ8R57CHUt66XSfw2GJe6RwKawG6pI8KBuT8dzCDAY1T
 ++89cqPwwX4CefMn1INBz7ULDzTtB40xZ344utxHy1zRKa9QDMKQxLlZ87RofmhBTNE5
 f3bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yACBHeKeTEMDk9G3lLdGdDWvtaeZqYr0jQBUvqwglB4=;
 b=ZjmxEd2bkZKDAb1dx6aOhA+Oy3lDS1OgPTv3EkgNd2jy0Ix8dL5asRBhp7khP7lJ2q
 C9V+iIPKoaidzVZ+vf8zVRthyXrZ4QafNOMjCBsvyaaXGv+LLxQ0iy7bnMgmWDArEUXO
 z6l2EP2jc3OQHOieOrtxdTGz3n8zFUbF0SVXJNJXGMcF3iJQekGHJMG3Xg7c2GB6fCJj
 VhMg0drEnlNf/OkOOCwike5ZbM1tDTxtV8e8ifHTzXxgP8g8cveCb6BXqOpFths28HxJ
 tz2aNIAkNEomthm9TqMkM7nLM1q4PWa7rs47DRRne/2SaujVuAK/f01tZhYeIzvFihAs
 E2Fw==
X-Gm-Message-State: AOAM5304XKr7YG5jgg38iOCVf3BCY54GcH8fXXIoea+4qJxZ8BXLC5Rs
 PXE3kpJcqW0nhDFFR48r5QhFeYC6taEFmkdImZIM
X-Google-Smtp-Source: ABdhPJwxUAWGvA4IBMn5mMg38sMi31Mre6YzUnRruh8cQT7hDfLAJ8Qn5kmdWmS5DDnWKzNCtLE9LtF6dBqjhJRtPZ8=
X-Received: by 2002:a05:620a:1379:: with SMTP id
 d25mr1128331qkl.238.1630522456666; 
 Wed, 01 Sep 2021 11:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210830193355.11338-1-asha.16@itfac.mrt.ac.lk>
 <20210831084735.GL12231@kadam>
In-Reply-To: <20210831084735.GL12231@kadam>
From: "F.A. SULAIMAN" <asha.16@itfac.mrt.ac.lk>
Date: Thu, 2 Sep 2021 00:24:05 +0530
Message-ID: <CAHnw0NAMaByr5m5Ai2APBc6Az_Lbb=TyCWmSdotVWKBJLPfVqg@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix memory leak error
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 31, 2021 at 2:18 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Aug 31, 2021 at 01:03:55AM +0530, F.A.Sulaiman wrote:
> > Smatch reported memory leak bug in rtl8723b_FirmwareDownload function.
> > The problem is pFirmware memory is not released in release_fw1.
> > Instead of redirecting to release_fw1 we can turn it into exit
> > and free the memory.
> >
> > Signed-off-by: F.A. SULAIMAN <asha.16@itfac.mrt.ac.lk>
> > ---
> >  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > index de8caa6cd418..b59c2aa3a9d8 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > @@ -436,7 +436,7 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
> >       if (pFirmware->fw_length > FW_8723B_SIZE) {
> >               rtStatus = _FAIL;
> >               DBG_871X_LEVEL(_drv_emerg_, "Firmware size:%u exceed %u\n", pFirmware->fw_length, FW_8723B_SIZE);
> > -             goto release_fw1;
> > +             goto exit;
> >       }
>
> The current tree doesn't have DBG_871X_LEVEL() so you must be working
> against something old.  You need to work against linux-next or staging
> next.
>
> Your patch fixes a bug, but it would be better to just re-write the
> error handling for this function.  There is another bug that a bunch
> of error paths don't call release_firmware(fw).  Use the "Free the Last
> Thing" method.
>
>         pFirmware = kzalloc(sizeof(struct rt_firmware), GFP_KERNEL);
>         if (!pFirmware)
>                 return _FAIL;
>
> The last thing we allocated is "pFirmware" so free that if we have an
> error.
>
>         pBTFirmware = kzalloc(sizeof(struct rt_firmware), GFP_KERNEL);
>         if (!pBTFirmware) {
>                 rtStatus = _FAIL;
>                 goto free_firmware;
>         }
>
> Now the last thing is pBTFirmware.
>
>         rtStatus = request_firmware(&fw, fwfilepath, device);
>         if (rtStatus) {
>                 rtStatus = _FAIL;
>                 goto free_bt_firmware;
>         }
>
> Now the last thing is "fw".  But this is a bit tricky because we're
> going to release it as soon as possible and not wait until the end of
> the function.  There isn't a reason for this...  We can change that or
> keep it as-is.  If we keep it as is, then the we'll just call
> release_firmware(fw); before the goto free_bt_firmware;  The current
> code leaks fw on a bunch of error paths.
>
>         pFirmware->fw_buffer_sz = kmemdup(fw->data, fw->size, GFP_KERNEL);
>         if (!pFirmware->fw_buffer_sz) {
>                 rtStatus = _FAIL;
>                 release_firmware(fw);
>                 goto free_bt_firmware;
>         }
>
> Or:
>
>         pFirmware->fw_buffer_sz = kmemdup(fw->data, fw->size, GFP_KERNEL);
>         if (!pFirmware->fw_buffer_sz) {
>                 rtStatus = _FAIL;
>                 goto release_fw;
>         }
>
> Now the last thing is pFirmware->fw_buffer_sz.  Etc.
>
> Then at the end it's just:
>
> free_fw_buffer:
>         kfree(pFirmware->fw_buffer_sz);
> release_fw:
>         release_firmware(fw);
> free_bt_firmware:
>         kfree(pBTFirmware);
> free_firmware:
>         kfree(pFirmware);
>
>         return rtStatus;
> }
>

Thank you! I'll do the changes and send you a v2 patch.

Best Regards,
Asha Sulaiman.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
