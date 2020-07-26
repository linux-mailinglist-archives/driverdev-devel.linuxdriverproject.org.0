Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F59B22DDD3
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B903884D7;
	Sun, 26 Jul 2020 09:57:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y8l7dE+MUV4Z; Sun, 26 Jul 2020 09:57:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA44E87FE9;
	Sun, 26 Jul 2020 09:57:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E010B1BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DB63087FE9
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RVl+jDWWSvD6 for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:57:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1621A87F79
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:57:02 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t10so1322551plz.10
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 02:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bEioRYPAU2RstGlAFkLfimzj4h56/cP3ARZGSjW0G+c=;
 b=tpdTiDHFIiZFLuKluIaRVXv06TsoqDVgPwWzaH0QECxEo4oSyVEq1VC0tviqxot+Iw
 cJ6C/bEoWGEN9rDc1Gf7/6xDdUxiWmRhqDIv3t76STpvog04kGjY5KU4TVYansjogzTm
 5PCyq3FdG4f0EQzIfPv4+PnspWSQnnLzpUOzEEeZ3xW3b3opihQLJKNHz4USvyPArOsU
 X8FJZmz/PdQM7ieLTuYNyYZnenAYowmXRwZpnYeABoqj/v2Yv+myAOgwf3FSS3YfI+JT
 SGBwV9zMsC2k3cwYk9LcE2tKUCYEEf5Y4akzhfa3BJmtbAsZQr1ud55k4w+Td+nwmx5m
 TzJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bEioRYPAU2RstGlAFkLfimzj4h56/cP3ARZGSjW0G+c=;
 b=NGtgw8Bt2Whgdg2A92C5bCVwSvde9y6OL7UuD8HUW3X8Tx575dx65uq9WhjAn0ID+2
 cioH58ysRPE7o+bQtWtROjeSmWcj5Wui2PGNOOnPGvT8cNgVmHoIwTfGwr9uUhwofNJT
 vRLLpVNcQ6yOmulJddFSdjCqy7FLroQjpdGrjqeBH+VnRkLwpN680cUYyhcCnlp9Vif2
 HdH5Ml16m0QiUg+2bMas7UCDh5PQ3kTqYQHhG2LVFZxpFa9QwqOxovUAtPyegykeLImk
 UQcFp31zZMB4rGNFiCu7bv950j2gUlcdIghJbIgwS/ZpZB9APYSy9Qz18G4J2mt95i7p
 DvCw==
X-Gm-Message-State: AOAM531840WTVJDqgyB4rGjtMpjmHabloOGRctx1JE/vgJ4FHBmUcGly
 LQYzvyztVi+n9Snu8e9GI/Y=
X-Google-Smtp-Source: ABdhPJwKh0EIayObse8Qy8n0W1VwaAasvfCJ0LRmd2NS2jKpgG0P1TwE7UAjWyjG34tYjDtaeptBmQ==
X-Received: by 2002:a17:902:82cb:: with SMTP id
 u11mr14742514plz.207.1595757421604; 
 Sun, 26 Jul 2020 02:57:01 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id k12sm1101356pjp.38.2020.07.26.02.56.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 26 Jul 2020 02:57:00 -0700 (PDT)
Subject: Re: [PATCH v3 2/4] staging: media: atomisp: fix style of open brace
To: Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
 <20200726090512.20574-2-bharadwaj.rohit8@gmail.com>
 <20200726114224.1825a769@coco.lan>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <33c496d9-227e-995e-3b43-3a64bc5163b5@gmail.com>
Date: Sun, 26 Jul 2020 15:26:56 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200726114224.1825a769@coco.lan>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 26/07/20 3:12 pm, Mauro Carvalho Chehab wrote:
> Em Sun, 26 Jul 2020 14:35:12 +0530
> Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com> escreveu:
> 
>> this patch fixes style of open brace after functions and if statements
>>
>> Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
> 
>> @@ -119,8 +121,9 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
>>  	blob = (const unsigned char *)fw + bi->blob.offset;
>>  
>>  	/* sanity check */
>> -	if (bi->blob.size != bi->blob.text_size + bi->blob.icache_size + bi->blob.data_size + bi->blob.padding_size)
>> -	{
>> +	if (bi->blob.size !=
>> +		bi->blob.text_size + bi->blob.icache_size +
>> +		bi->blob.data_size + bi->blob.padding_size) {
> 
> 
> Please adjust the alignments here. I'm pretty sure checkpatch --strict
> will end complaining with the above, as the first line ends with "=".
> 
> I would, instead, code it as:
> 
> 	if (bi->blob.size != bi->blob.text_size + bi->blob.icache_size +
> 			     bi->blob.data_size + bi->blob.padding_size) {
> 
> 
> Thanks,
> Mauro
> 
sure sir, do I have to make a v4 of the patch and send all the patches in this series again or should I just send this one particular patch again?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
