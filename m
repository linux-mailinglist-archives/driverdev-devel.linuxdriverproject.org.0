Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 686D722DD61
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 10:58:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 006B5879AE;
	Sun, 26 Jul 2020 08:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8y1yt8m+aliu; Sun, 26 Jul 2020 08:58:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5ED387985;
	Sun, 26 Jul 2020 08:58:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 230751BF568
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 08:58:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1FEFE8608D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 08:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFC7VifuGdBj for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 08:58:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7CFC285EA4
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 08:58:13 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id j19so7728558pgm.11
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 01:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=eKHZfUdWwVlQQlyAJPYR0dRFAIn0IvrChWeOS54Hjw8=;
 b=SAdQOW0fI8g1P+YzT9518H+diSMFVQ99WAv18bOGv+9eGpuqUFK9WpwxhV/TCmlGMU
 zjRSBvsP0iwFPKZVOOAOX7Nb36YvOplvZ3YG3LZPQ2c2U/kVjH+O0oUEBH6gaCn4S590
 gdaDdNus0yOHZ79yQrJJ5MsNvlaT5xyGOsW8MovwiaNcgB81yX9CC22ri7tLQrHH8AQX
 rQA1XzI47mP34DG18lMjsTTN0+rBU31ECQo9LstPKDyL8HLa/oO9VSt/pEVIxpq2x7/F
 lv+ax2HapGThCAcAoT4HLL9TEFnX5CxxhjAdOrcr96aRz6CV8wS5hpPL4ddUtaRn8DVV
 rUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eKHZfUdWwVlQQlyAJPYR0dRFAIn0IvrChWeOS54Hjw8=;
 b=J0CWdmJn+pCiDaOwjI6HidyD8YuhkzWIrTdmXLsdpKR5Xg/pOanOPfvovR5YX0nT8z
 sLjVLisyKWUzwWJ38nYySnszYfer3WGlvn05iG26HjL7sWHkF+8gJggq53g0nH3Ky86f
 UhXQCCi5BiY+Zc7dTlhkrOOP6ANx12463Wvkr3fZp28oHbfu7JZuqN5e0qPDEDVOy9Zk
 4Vq3n+94UuzP6py03WcpyYE11G8J8e5aAvVU4yp0yds9nYK0e7HVBT/1xHIeIa6XSVfN
 bFkDQp1qVlAY/qcGMjNkVBQa/X2YoYWNlVfGUWiFI35O4leHEdR5X2aFNabETDFJ7bi5
 UCNw==
X-Gm-Message-State: AOAM530NMMfGgl9HgF5mcyuFJdyX5JhL4a5fP88ZcZBjUIjM6VSVMg0V
 b8zazfJmPODxLFgG8Icwy+JVZVY7GF8=
X-Google-Smtp-Source: ABdhPJxR1ssefATZ2ss4fjbe1RFJ43C4cGCkQ6Jp477YREPPPvJSj1/lKcLKbnddi+XWTryFxF8TzA==
X-Received: by 2002:a62:18cd:: with SMTP id 196mr16073837pfy.253.1595753893075; 
 Sun, 26 Jul 2020 01:58:13 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id 17sm11572910pfv.16.2020.07.26.01.58.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Jul 2020 01:58:12 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] fix style of block comments
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
References: <20200726084900.19246-1-bharadwaj.rohit8@gmail.com>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <6e0d8e34-4440-7c40-04cc-a7bed99e6e68@gmail.com>
Date: Sun, 26 Jul 2020 14:28:08 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200726084900.19246-1-bharadwaj.rohit8@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 26/07/20 2:18 pm, Rohit K Bharadwaj wrote:
> this patch fixes the coding style of block comments.
> 
> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
> ---
> v2: split patch into sequence of patches 
> v1: fix all coding style issues in single patch
> 
>  .../media/atomisp/pci/sh_css_firmware.c       | 28 +++++++++++++------
>  1 file changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
> index d4ab15b6d1ac..2907aead98b7 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
> @@ -51,9 +51,12 @@ struct fw_param {
>  
>  static struct firmware_header *firmware_header;
>  
> -/* The string STR is a place holder
> +/*
> + * The string STR is a place holder
>   * which will be replaced with the actual RELEASE_VERSION
> - * during package generation. Please do not modify  */
> + * during package generation. Please do not modify
> + */
> +
>  static const char *isp2400_release_version = STR(irci_stable_candrpv_0415_20150521_0458);
>  static const char *isp2401_release_version = STR(irci_ecr - master_20150911_0724);
>  
> @@ -276,10 +279,11 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
>  	for (i = 0; i < sh_css_num_binaries; i++)
>  	{
>  		struct ia_css_fw_info *bi = &binaries[i];
> -		/* note: the var below is made static as it is quite large;
> -		   if it is not static it ends up on the stack which could
> -		   cause issues for drivers
> -		*/
> +		/*
> +		 * note: the var below is made static as it is quite large;
> +		 * if it is not static it ends up on the stack which could
> +		 * cause issues for drivers
> +		 */
>  		static struct ia_css_blob_descr bd;
>  		int err;
>  
> @@ -333,7 +337,11 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
>  				return err;
>  
>  		} else {
> -			/* All subsequent binaries (including bootloaders) (i>NUM_OF_SPS) are ISP firmware */
> +			/*
> +			 * All subsequent binaries
> +			 * (including bootloaders) (i>NUM_OF_SPS)
> +			 * are ISP firmware
> +			 */
>  			if (i < NUM_OF_SPS)
>  				return -EINVAL;
>  
> @@ -374,8 +382,10 @@ ia_css_ptr
>  sh_css_load_blob(const unsigned char *blob, unsigned int size)
>  {
>  	ia_css_ptr target_addr = hmm_alloc(size, HMM_BO_PRIVATE, 0, NULL, 0);
> -	/* this will allocate memory aligned to a DDR word boundary which
> -	   is required for the CSS DMA to read the instructions. */
> +	/*
> +	 * this will allocate memory aligned to a DDR word boundary which
> +	 * is required for the CSS DMA to read the instructions.
> +	 */
>  
>  	assert(blob);
>  	if (target_addr)
> 
I'm really sorry for the spam, please excuse me, I realized that I didn't change the subject prefix so will send another version, apologies for any inconvenience caused.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
