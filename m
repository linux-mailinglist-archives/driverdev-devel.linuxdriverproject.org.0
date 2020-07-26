Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B42C122DDAE
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 45C7E2046F;
	Sun, 26 Jul 2020 09:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoRJmPQYv7Tt; Sun, 26 Jul 2020 09:19:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1FE5421511;
	Sun, 26 Jul 2020 09:19:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 090FB1BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 02F352107F
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nxprWsHa7JfZ for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 4B1E02046F
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:19:35 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id c6so989916pje.1
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 02:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=f9+BvbidqIi5KrJv6F/Ng/Bay2ACaZFPGHdyYHb/krg=;
 b=LxCzSbbhmTC7r7Yg+gaBst0fpjkUq0dgLVZ68belm0Z+s8un8G453ez3fZ3vmXs7/h
 VvKHWK6NGkfkokn8fZExmyoBhxLqKDUCZU4DVFze76b3BIPTcR7mu/3CHG0W0c89o6M2
 7mKMuOC+21T8F8O+msyqmhDGLz4e9dgLSv6VZr35wUwxdT11TxDMJUTQCq08KOR2Gh/Y
 R6NFvKKtmLVHj9lfDLGL1Sp9X8iBBcVwBWnu3R4gR2v1uCtE0lFinBm3jq94I5A52URI
 Vs7vLdjLeOqUkA8uueJI7rsc4bJumsAT0QTJv6s9St14BnrS3t5g1xnqtNk1es9FJ9H7
 nHng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=f9+BvbidqIi5KrJv6F/Ng/Bay2ACaZFPGHdyYHb/krg=;
 b=IFtMpnL6IHUkn2Yknz1xv98NmSel1jFRwZF3njMYJZF6rRkJiKPC3CbxhsEss1vGrM
 v9QvFVHtA/nVNB+Fffc5/H6gpGRwU71D1oTs/OQnieBaegvw2kjgQtBOFpeVUPDXAL8m
 PhdwPBw59+j/4qR0mLbkjiQIUvuIXcFLHQdOHMx9GC5huqFPEVfM/K5qbyWUf2uPrr6A
 8oZD1+mC32yN1mj0udGToZCLXPDhqGpuaTgOQglsRpnizyfkypLOXXtYgtYl15Us/och
 XFd/FSg1Kx++hS6eRw2MyrRB6YnvD410KXpo++rebSj5ibUk3cQMWtT8mGN2NbjPvOv1
 m0lw==
X-Gm-Message-State: AOAM532YbZ7pwQUMgAgMWld5SzZMsw30h08vK8f18PRPdFlx+J4BTevp
 S9rcaxBSY+BzCXl/JFa5LS8=
X-Google-Smtp-Source: ABdhPJxy11NqBk/e8Hj1jFN5T5gBzagjV3YGhBg3rpJSER2xbx8LIGV57G8g8/jlJq37UHsa7My9qQ==
X-Received: by 2002:a17:90a:c085:: with SMTP id
 o5mr13873286pjs.196.1595755174934; 
 Sun, 26 Jul 2020 02:19:34 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id h7sm11738689pfq.15.2020.07.26.02.19.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Jul 2020 02:19:34 -0700 (PDT)
Subject: Re: [PATCH v3 1/4] staging: media: atomisp: fix style of block
 comments
To: Greg KH <gregkh@linuxfoundation.org>
References: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
 <20200726090512.20574-1-bharadwaj.rohit8@gmail.com>
 <20200726091209.GA451376@kroah.com>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <9fb53713-e58c-17d9-1553-80d80e4b3863@gmail.com>
Date: Sun, 26 Jul 2020 14:49:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200726091209.GA451376@kroah.com>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 26/07/20 2:42 pm, Greg KH wrote:
> On Sun, Jul 26, 2020 at 02:35:10PM +0530, Rohit K Bharadwaj wrote:
>> this patch fixes the coding style of block comments.
>>
>> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
>> ---
>> v3: change patch subject prefix
>> v2: split patch into sequence of patches 
>> v1: fix all coding style issues in single patch
>>
>>  .../media/atomisp/pci/sh_css_firmware.c       | 28 +++++++++++++------
>>  1 file changed, 19 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
>> index d4ab15b6d1ac..2907aead98b7 100644
>> --- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
>> +++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
>> @@ -51,9 +51,12 @@ struct fw_param {
>>  
>>  static struct firmware_header *firmware_header;
>>  
>> -/* The string STR is a place holder
>> +/*
>> + * The string STR is a place holder
>>   * which will be replaced with the actual RELEASE_VERSION
>> - * during package generation. Please do not modify  */
>> + * during package generation. Please do not modify
>> + */
>> +
> 
> Why the blank line?
> 
Sir, I thought that it would improve the readability of the code and would help easily distinguish comments from the variable declaration part, and also since there was a blank line between the start of comment and the static struct firmware_header variable, I thought of putting a blank line after the comment end as well to maintain symmetry. 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
