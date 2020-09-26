Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A27D279679
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Sep 2020 06:01:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 868E5204B0;
	Sat, 26 Sep 2020 04:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ude-EuX43rD; Sat, 26 Sep 2020 04:01:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7942520465;
	Sat, 26 Sep 2020 04:01:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 92CD41BF59C
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 04:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 82E4720465
 for <devel@linuxdriverproject.org>; Sat, 26 Sep 2020 04:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cD78RJe7jipp for <devel@linuxdriverproject.org>;
 Sat, 26 Sep 2020 04:01:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E93620461
 for <devel@driverdev.osuosl.org>; Sat, 26 Sep 2020 04:01:19 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 34so4106935pgo.13
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 21:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=TCLpBq4jyMG77GP2R933Y/gRiD3JyJMcxFQYJsXV3Gk=;
 b=OsyEZXaTKb7OV2/NqNW/x7EvHET4jO1Hhn1E1qG3wTA3LhsYpgsvqCU56G5e3WC5Vy
 9BYtAPuc3AATW93F4KxW/1UxkGdKXyrzMydl3hu4aZXk8rDztd6D0QIJfInzLXtU1tXM
 K1kyD2Fv/qmyLngIPnFqwD+wuEidtDmBPUt+CnTHKQQUdcN/G4mCGd5Z2M9m6z5ztzx0
 eshGzW1mynZGTNcJN2C4+oNyKIxlz1uHRmaGrq2RVv9glx98+/g+8FtrNcbvcC7qtg1B
 DGQpc/eU94nQHpvBHcHn3lgL4n37Cf+dLX+aeG9pr96GU9BF/J050++myPFo1Vf46OKZ
 1DwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=TCLpBq4jyMG77GP2R933Y/gRiD3JyJMcxFQYJsXV3Gk=;
 b=TI/DyITBPv3gaEIw+ikEuH2L2kvHx8Rykxujll39hPcT4RygwIKEzqSA6Pjj8E38QK
 fDOUgAklLDpB4AqnijvMZLDeYJb1oP0nkbLeVv7tJbLsQooEqRcU+dPmWYFnVwFpMnxD
 tV6cOWZU/+yIyshmp8M4EZY/d+gxoSo5ss3sxonfWpXSrOWzZe8BFGAifOS/3aPlOqvp
 qoSctAvkg2Tey2rFHGU+bzMTz6Fqftx1wyQQ32hl0eo2du3xYBT6jpWKs4E+cai6nCma
 gZOQDG4Gp9UWD8FLTcK8zlvdNwbc3L8TKpDp4I0tcJLOG7k9G3W5iQgI9sHpzWZYcHvD
 CZiA==
X-Gm-Message-State: AOAM533lIvAuCsJUAKmfECpMQyndZULE67PBYyenZc5Nb3WauYAnyvx2
 QPw86c3BV9WxS4eBJ9Nbm90=
X-Google-Smtp-Source: ABdhPJyZrrVz7fzpSvWglCTbLHQ0w97YfNqd4GdFHcJReA+jLRXGgmNHT1uIfS8ry/R1pdlYaI/cqA==
X-Received: by 2002:a63:2246:: with SMTP id t6mr1657520pgm.120.1601092878577; 
 Fri, 25 Sep 2020 21:01:18 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id y3sm3480520pgh.40.2020.09.25.21.01.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 21:01:17 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 26 Sep 2020 12:01:08 +0800
To: Alex Elder <elder@linaro.org>
Subject: Re: [greybus-dev] [PATCH 3/3] [PATCH] staging: greybus: __u8 is
 sufficient for snd_ctl_elem_type_t and snd_ctl_elem_iface_t
Message-ID: <20200926040108.otqei3k74gipotk6@Rk>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
 <0175c477851243baa8a92177667d6312@AcuMS.aculab.com>
 <20200925141125.vfm5sjnsfvxo2ras@Rk>
 <160c222d-79e4-c5f0-344f-1a69821db039@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160c222d-79e4-c5f0-344f-1a69821db039@linaro.org>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "moderated list:SOUND" <alsa-devel@alsa-project.org>,
 Alex Elder <elder@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Johan Hovold <johan@kernel.org>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 David Laight <David.Laight@aculab.com>, Jaroslav Kysela <perex@perex.cz>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 25, 2020 at 11:02:23AM -0500, Alex Elder wrote:
>On 9/25/20 9:11 AM, Coiby Xu wrote:
>>On Thu, Sep 24, 2020 at 10:54:50AM +0000, David Laight wrote:
>>>From: Coiby Xu
>>>>Sent: 24 September 2020 11:21
>>>>Use __8 to replace int and remove the unnecessary __bitwise type
>>>>attribute.
>>>>
>>>>Found by sparse,
>>>...
>>>>diff --git a/include/uapi/sound/asound.h b/include/uapi/sound/asound.h
>>>>index 535a7229e1d9..8e71a95644ab 100644
>>>>--- a/include/uapi/sound/asound.h
>>>>+++ b/include/uapi/sound/asound.h
>>>>@@ -950,7 +950,7 @@ struct snd_ctl_card_info {
>>>>=A0=A0=A0=A0 unsigned char components[128];=A0=A0=A0 /* card components=
 / fine
>>>>identification, delimited with one
>>>>space (AC97 etc..) */
>>>>=A0};
>>>>
>>>>-typedef int __bitwise snd_ctl_elem_type_t;
>>>>+typedef __u8 snd_ctl_elem_type_t;
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_NONE=A0=A0=A0 ((__force
>>>>snd_ctl_elem_type_t) 0) /* invalid */
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_BOOLEAN=A0=A0=A0 ((__force
>>>>snd_ctl_elem_type_t) 1) /* boolean type */
>>>>=A0#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_INTEGER=A0=A0=A0 ((__force
>>>>snd_ctl_elem_type_t) 2) /* integer type */
>>>
>>>WTF is all that about anyway??
>>>What is wrong with:
>>>#define=A0=A0=A0 SNDRV_CTL_ELEM_TYPE_NONE=A0=A0=A0 0u /* invalid */
>>
>>I'm sorry I don't quite understand you. Are you suggesting
>>SNDRV_CTL_ELEM_TYPE_NONE
>>isn't needed in the first place?
>
>I think David is asking why it's defined the way it is,
>and I'd guess it's to have the compiler issue an error
>if you attempt to assign one of these values to a variable
>or field of the wrong type.
>
>No, you should not attempt to change this.

Thank you for the explanation!

>
>					-Alex
>>>=A0=A0=A0=A0David
>>>
>>>-
>>>Registered Address Lakeside, Bramley Road, Mount Farm, Milton
>>>Keynes, MK1 1PT, UK
>>>Registration No: 1397386 (Wales)
>>>
>>
>>--
>>Best regards,
>>Coiby
>>_______________________________________________
>>greybus-dev mailing list
>>greybus-dev@lists.linaro.org
>>https://lists.linaro.org/mailman/listinfo/greybus-dev
>

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
