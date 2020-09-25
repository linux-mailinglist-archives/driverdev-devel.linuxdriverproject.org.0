Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E99278A7B
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 16:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E8A1875D3;
	Fri, 25 Sep 2020 14:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ps9C5fDCjimQ; Fri, 25 Sep 2020 14:11:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93D118750D;
	Fri, 25 Sep 2020 14:11:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1185E1BF304
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 14:11:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D1CC86C76
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 14:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eQeQq59pmdo for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 14:11:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0532686C3E
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 14:11:37 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id mn7so1817685pjb.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 07:11:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Q08aEOVeEFIcbOVub2p7BVSdpIEBfXqJPk66Kzol7Ek=;
 b=B9iVuIIH3TYz9BMPhpD3a1bfdq5boPpLLU+4e9jJwFetvvfwUrsy1TwiBC2V8caeD1
 KQjWepGRZERKAFzv/tm88uLD+8BO9ZNGf6yjSluDtpbiBSzYvwMmXDfCGYkSVcC81Rmm
 hJc1/ajoke2Hggavt93yp87KRIiX8gXeqj6b2LqqBuZMwVEkQr/dn09D8kzBYDSbrZ2t
 6JaFvocHhZB54NbXjuFRE50HqVdB+2PwALiMuPgPC90X+VT5R4PmL3EG20GdHZ3agLCg
 v6+5uLZzKtiyi9sT7uR7LOkpSvXYtQUJD+LzZYE0UCJG+Gc4Ozbd0eHhwPfBYcPPgCjc
 s2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Q08aEOVeEFIcbOVub2p7BVSdpIEBfXqJPk66Kzol7Ek=;
 b=Mtxo3AKpz/JgECVnGG1+dbf+6vFlD/roEHN/0NjRgAhSccNgH7BR0y3xErDZkVVOlw
 h/+TRAitnRVqM6J8q5l+hyFackj+oT/JEzn2PkVlL+3LgzURCxmSVBWKnWiqKHik3EBQ
 X/HWDZ/JF2YlCMDo2jwdd17MVpde7RifEy+x4dz9xZrIKXqUBYw8F80h/kGtJqJ78FOi
 f/36xswaQfqra5Z6vD9yif3DgvgMTuDf8QYFEj08BRVsUBXVshUL1Rl5LZkjNEYqvgxo
 gyQ3JKY2RsRQvm5mxrVKUMja2L+Akv18NpqTw1P6xlQXwBZMwylm8ZCDVJ2e/SQXtify
 wq8w==
X-Gm-Message-State: AOAM531sp2Hsgf9CqAqMEQeOwvTSaWUk8SmFia2zMTzN4oEUlQi4sCNt
 7UhHMe5Pc5fQ0VnQDKdoXWw=
X-Google-Smtp-Source: ABdhPJzT6sXqjKAB73bAq8KZRHwwr+CQap8YXV/cCKxktgj12xrTfbNkL1PGBRW3RyMRygsVwxd83g==
X-Received: by 2002:a17:90a:8d05:: with SMTP id
 c5mr490557pjo.222.1601043096640; 
 Fri, 25 Sep 2020 07:11:36 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id 1sm2508194pgm.4.2020.09.25.07.11.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 07:11:36 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 25 Sep 2020 22:11:25 +0800
To: David Laight <David.Laight@aculab.com>
Subject: Re: [PATCH 3/3] [PATCH] staging: greybus: __u8 is sufficient for
 snd_ctl_elem_type_t and snd_ctl_elem_iface_t
Message-ID: <20200925141125.vfm5sjnsfvxo2ras@Rk>
References: <20200924102039.43895-1-coiby.xu@gmail.com>
 <20200924102039.43895-3-coiby.xu@gmail.com>
 <0175c477851243baa8a92177667d6312@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0175c477851243baa8a92177667d6312@AcuMS.aculab.com>
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
 Alex Elder <elder@kernel.org>, Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 "moderated list:GREYBUS SUBSYSTEM" <greybus-dev@lists.linaro.org>,
 Jaroslav Kysela <perex@perex.cz>, open list <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 24, 2020 at 10:54:50AM +0000, David Laight wrote:
>From: Coiby Xu
>> Sent: 24 September 2020 11:21
>> Use __8 to replace int and remove the unnecessary __bitwise type attribute.
>>
>> Found by sparse,
>...
>> diff --git a/include/uapi/sound/asound.h b/include/uapi/sound/asound.h
>> index 535a7229e1d9..8e71a95644ab 100644
>> --- a/include/uapi/sound/asound.h
>> +++ b/include/uapi/sound/asound.h
>> @@ -950,7 +950,7 @@ struct snd_ctl_card_info {
>>  	unsigned char components[128];	/* card components / fine identification, delimited with one
>> space (AC97 etc..) */
>>  };
>>
>> -typedef int __bitwise snd_ctl_elem_type_t;
>> +typedef __u8 snd_ctl_elem_type_t;
>>  #define	SNDRV_CTL_ELEM_TYPE_NONE	((__force snd_ctl_elem_type_t) 0) /* invalid */
>>  #define	SNDRV_CTL_ELEM_TYPE_BOOLEAN	((__force snd_ctl_elem_type_t) 1) /* boolean type */
>>  #define	SNDRV_CTL_ELEM_TYPE_INTEGER	((__force snd_ctl_elem_type_t) 2) /* integer type */
>
>WTF is all that about anyway??
>What is wrong with:
>#define	SNDRV_CTL_ELEM_TYPE_NONE	0u /* invalid */

I'm sorry I don't quite understand you. Are you suggesting SNDRV_CTL_ELEM_TYPE_NONE
isn't needed in the first place?
>
>	David
>
>-
>Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
>Registration No: 1397386 (Wales)
>

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
