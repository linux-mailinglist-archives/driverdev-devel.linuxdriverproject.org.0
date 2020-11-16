Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B382B531F
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 21:47:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CEF54870A1;
	Mon, 16 Nov 2020 20:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFMY7766Kf3u; Mon, 16 Nov 2020 20:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BD5886FD5;
	Mon, 16 Nov 2020 20:46:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10C261BF2A4
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 20:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D38186FDB
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 20:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uLyobtu9nCCD for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 20:46:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C390D86FD5
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 20:46:54 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id y4so14325764edy.5
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 12:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iAACKfn8rangRcEQUTh4m0a+pQ/FoGsxDIe/USx04Pc=;
 b=Ql53A8BcNpmbrA+SOhPrgNDRDNz3rChQJr1kwKh2FulIEi/3rK8mpwxPIwKXKzzJA9
 cUwWgdCsoVV9lrhObFRY83AzgFDfs3JctvKqgcLGDfNvThdzJPI08J2ux65VczgLnPbl
 sK1MCKBB6MYKHGRyJBky7eaEHIzNb6nnbVFzUF7IsS5Qj/gX6LCFLj0u9c9ICEE2MMI3
 /VbTvzK5rCLY71Des0WQTh8TUa1wx73c8bpOZIFPWNuQ87rZZLNOxbOIfmHKgrj8nuZg
 jf/dyftN1OP31FingYqmp8EYFSO3Bh3Q72Nljjv2iVMehtF1vxhB0MPbsdGgc/rpGZyM
 gxFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iAACKfn8rangRcEQUTh4m0a+pQ/FoGsxDIe/USx04Pc=;
 b=l8GDKHsq36n6zsCpGZawDDPA4SK9Iy/yEgYup8wGsk4liLrwqnTdIntmxs+AIPEPw0
 xnKezyN2X2zziEoZx20UPZTTOlAdUEI3BnDg9RfVpk1l6p0YyfdQNlkEgKnPmGpzSRYf
 tuJc0PaGJfk2knAYjH/S8U16R/D9jqbOA5X6dL5l5LmKlb3Q5yduG+eRHTE04M1RVQKG
 1MXVEhzaQMrzC3/6R8lRkSX+LwaD0bXLo0Au/a0I+XOQqT+3UGl5NnquRQ+r/y2h2MSG
 e9/RUzGTgP+JA1BxjC0NMqXEPTnkH7i+VXf0MlRjNA4oGo0aQXiJdCcEl0R0vL04mkMJ
 j3ZA==
X-Gm-Message-State: AOAM530lnGK0MbQ2RmGDl5wj7qSp/Kw5cxSHNFWkCOLDAjTUZ7t5WYzJ
 jX4lrOMDX2t7Etjw8Kb1X4o=
X-Google-Smtp-Source: ABdhPJzEgI6lgq+IS1YB4MTYWmGSGYoDGNeoaA8Wv2A2qy4+Z8vZsdoIYhz5+C6+snWbjesAMBrXVw==
X-Received: by 2002:a05:6402:7c7:: with SMTP id
 u7mr17447179edy.351.1605559613261; 
 Mon, 16 Nov 2020 12:46:53 -0800 (PST)
Received: from localhost.localdomain
 (ptr-d0vvtt9s69zjdfz9c1k.18120a2.ip6.access.telenet.be.
 [2a02:1811:b214:8000:467b:ead9:6950:d438])
 by smtp.gmail.com with ESMTPSA id l20sm10992048eja.40.2020.11.16.12.46.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 12:46:52 -0800 (PST)
From: Emmanouil Perselis <perselis.e@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Fix warning for static const char * array in
 audio_manager_module.c
Date: Mon, 16 Nov 2020 21:43:23 +0100
Message-Id: <20201116204322.2122-1-perselis.e@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <66314332-e66d-9b34-52f9-ae005df2be15@ieee.org>
References: <66314332-e66d-9b34-52f9-ae005df2be15@ieee.org>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vaibhav.sr@gmail.com,
 linux-kernel@vger.kernel.org, johan@kernel.org, mgreer@animalcreek.com,
 greybus-dev@lists.linaro.org, Emmanouil Perselis <perselis.e@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 11/15/20 9:17 AM, Greg Kroah-Hartman wrote:
> On Sun, Nov 15, 2020 at 03:53:16PM +0100, Emmanouil Perselis wrote:
>> This patch fixes the warning "static const char * array should
>> probably be static const char * const" in
>> drivers/staging/greybus/audio_manager_module.c

>> I think Greg's patch bot is telling you that you need
>> to carbon-copy the mailing list on your patch submission,
>> not just address it to the maintainers.

Added addresses to carbon copy.

>>					-Alex

>>
>> Signed-off-by: Emmanouil Perselis <perselis.e@gmail.com>
>> ---
>>   drivers/staging/greybus/audio_manager_module.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
>> index 2bfd804183c4..6ef7381f4e85 100644
>> --- a/drivers/staging/greybus/audio_manager_module.c
>> +++ b/drivers/staging/greybus/audio_manager_module.c
>> @@ -158,7 +158,7 @@ static void send_add_uevent(struct gb_audio_manager_module *module)
>>   	char ip_devices_string[64];
>>   	char op_devices_string[64];
>>   
>> -	char *envp[] = {
>> +	static const char * const envp[] = {
>>   		name_string,
>>   		vid_string,
>>   		pid_string,
>> -- 
>> 2.20.1
>>
> 
> Hi,
> 
> This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
> a patch that has triggered this response.  He used to manually respond
> to these common problems, but in order to save his sanity (he kept
> writing the same thing over and over, yet to different people), I was
> created.  Hopefully you will not take offence and will fix the problem
> in your patch and resubmit it so that it can be accepted into the Linux
> kernel tree.
> 
> You are receiving this message because of the following common error(s)
> as indicated below:
> 
> - Your patch was sent privately to Greg.  Kernel development is done in
>    public, please always cc: a public mailing list with a patch
>    submission.  Using the tool, scripts/get_maintainer.pl on the patch
>    will tell you what mailing list to cc.
> 
> - You did not specify a description of why the patch is needed, or
>    possibly, any description at all, in the email body.  Please read the
>    section entitled "The canonical patch format" in the kernel file,
>    Documentation/SubmittingPatches for what is needed in order to
>    properly describe the change.
> 
> - You did not write a descriptive Subject: for the patch, allowing Greg,
>    and everyone else, to know what this patch is all about.  Please read
>    the section entitled "The canonical patch format" in the kernel file,
>    Documentation/SubmittingPatches for what a proper Subject: line should
>    look like.
> 
> If you wish to discuss this problem further, or you have questions about
> how to resolve this issue, please feel free to respond to this email and
> Greg will reply once he has dug out from the pending patches received
> from other developers.
> 
> thanks,
> 
> greg k-h's patch email bot
> 


Signed-off-by: Emmanouil Perselis <perselis.e@gmail.com>
---
 drivers/staging/greybus/audio_manager_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_manager_module.c b/drivers/staging/greybus/audio_manager_module.c
index 2bfd804183c4..6ef7381f4e85 100644
--- a/drivers/staging/greybus/audio_manager_module.c
+++ b/drivers/staging/greybus/audio_manager_module.c
@@ -158,7 +158,7 @@ static void send_add_uevent(struct gb_audio_manager_module *module)
 	char ip_devices_string[64];
 	char op_devices_string[64];
 
-	char *envp[] = {
+	static const char * const envp[] = {
 		name_string,
 		vid_string,
 		pid_string,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
