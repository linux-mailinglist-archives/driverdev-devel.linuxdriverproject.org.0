Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E934E89A
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 15:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3F3DE221F0;
	Fri, 21 Jun 2019 13:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RkROWLq-XWyV; Fri, 21 Jun 2019 13:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6284C221B2;
	Fri, 21 Jun 2019 13:09:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFB4A1BF359
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 13:09:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CD1F387F78
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 13:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oh1quyjQxkQ4 for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 13:09:53 +0000 (UTC)
X-Greylist: delayed 00:07:49 by SQLgrey-1.7.6
Received: from mx-rz-2.rrze.uni-erlangen.de (mx-rz-2.rrze.uni-erlangen.de
 [131.188.11.21])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F216587F38
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 13:09:52 +0000 (UTC)
Received: from mx-rz-smart.rrze.uni-erlangen.de
 (mx-rz-smart.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::1e])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by mx-rz-2.rrze.uni-erlangen.de (Postfix) with ESMTPS id 45Vf3B4LpFzPkKs;
 Fri, 21 Jun 2019 15:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561122118; bh=EG7lcFvB9T+O8vsdLpuJUEMt1JSbCZEPsjwogrh6WHo=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:To:CC:
 Subject;
 b=B/x9jBWwEqhqn9sQNqIeXhuRPL/5F4qDqijp4jtBV0dRJVUMUrd4wRRpcBcMhW2JL
 6WUwVeu+tkoe1cy1mdiYFVwhzkSgcu29YzBr3qVKTCGRWXCrnYuX1z8sbqPMavxJdd
 P43GVEPotpl0IRqq2wwxePez975yDvFAHGNfeZ+iE/FV7Y9Gto3A0bUcsH9u0QEwtF
 XRuwOYQRkDhPW+gs882c3Hik8hyhZJSIOHXQ1i/kqstq0UYTdViV0n/Jk2B296UVi3
 95HxWa7+gZsMvXcSlyAkJN9mf7Bt42boDd5EIiuOKDE3F/YlvoSjCiVJSdwd3kc0da
 Xsez3QG1/uDuA==
X-Virus-Scanned: amavisd-new at boeck4.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
X-RRZE-Submit-IP: 2003:ea:371a:4600:e106:19f8:34a7:eaec
Received: from [IPv6:2003:ea:371a:4600:e106:19f8:34a7:eaec]
 (p200300EA371A4600E10619F834A7EAEC.dip0.t-ipconnect.de
 [IPv6:2003:ea:371a:4600:e106:19f8:34a7:eaec])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: U2FsdGVkX19ZePNdXmNy1kvc6Mw6MaNW3XSCvzEfcTA=)
 by smtp-auth.uni-erlangen.de (Postfix) with ESMTPSA id 45Vf3272gLzPkfT;
 Fri, 21 Jun 2019 15:01:50 +0200 (CEST)
Subject: Re: [PATCH 4/4] rts5208: Fix usleep range is preferred over udelay
To: Pavel Machek <pavel@ucw.cz>
References: <20190619154648.13840-1-lukas.s.schneider@fau.de>
 <20190619154648.13840-4-lukas.s.schneider@fau.de>
 <20190621110405.GG24145@amd>
From: Lukas Schneider <lukas.s.schneider@fau.de>
Message-ID: <1e397063-9cf2-69d3-84fe-53c5776f2c5b@fau.de>
Date: Fri, 21 Jun 2019 15:01:38 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190621110405.GG24145@amd>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 Jannik Moritz <jannik.moritz@fau.de>, linux-kernel@vger.kernel.org,
 pakki001@umn.edu, colin.king@canonical.com, kim.jamie.bradley@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Am 21.06.2019 um 13:04 schrieb Pavel Machek:
> On Wed 2019-06-19 17:46:48, Lukas Schneider wrote:
>> This patch fixes the issue reported by checkpatch:
>>
>> CHECK: usleep_range is preferred over udelay;
>> see Doucmentation/timers/timers-howto.txt
>>
>> It's save to sleep here instead of using busy waiting,
>> because we are not in an atomic context.
> Is it good idea? How can the system really sleep for 50 usec?
>
>        	   	     	     	    	   	     Pavel

According to Doucmentation/timers/timers-howto.txt, usleep_range should 
be used for sleep times between 10us and 20ms, so it is the correct 
function for 50us.

Lukas

>> @@ -865,7 +865,7 @@ static int sd_change_phase(struct rtsx_chip *chip, u8 sample_point, u8 tune_dir)
>>   						     PHASE_CHANGE);
>>   			if (retval)
>>   				return retval;
>> -			udelay(50);
>> +			usleep_range(50, 60);
>>   			retval = rtsx_write_register(chip, SD_VP_CTL, 0xFF,
>>   						     PHASE_CHANGE |
>>   						     PHASE_NOT_RESET |
>> @@ -877,14 +877,14 @@ static int sd_change_phase(struct rtsx_chip *chip, u8 sample_point, u8 tune_dir)
>>   						     CHANGE_CLK, CHANGE_CLK);
>>   			if (retval)
>>   				return retval;
>> -			udelay(50);
>> +			usleep_range(50, 60);
>>   			retval = rtsx_write_register(chip, SD_VP_CTL, 0xFF,
>>   						     PHASE_NOT_RESET |
>>   						     sample_point);
>>   			if (retval)
>>   				return retval;
>>   		}
>> -		udelay(100);
>> +		usleep_range(100, 110);
>>   
>>   		rtsx_init_cmd(chip);
>>   		rtsx_add_cmd(chip, WRITE_REG_CMD, SD_DCMPS_CTL, DCMPS_CHANGE,
>> @@ -918,7 +918,7 @@ static int sd_change_phase(struct rtsx_chip *chip, u8 sample_point, u8 tune_dir)
>>   				return retval;
>>   		}
>>   
>> -		udelay(50);
>> +		usleep_range(50, 60);
>>   	}
>>   
>>   	retval = rtsx_write_register(chip, SD_CFG1, SD_ASYNC_FIFO_NOT_RST, 0);
>> @@ -1416,7 +1416,7 @@ static int sd_wait_data_idle(struct rtsx_chip *chip)
>>   			retval = STATUS_SUCCESS;
>>   			break;
>>   		}
>> -		udelay(100);
>> +		usleep_range(100, 110);
>>   	}
>>   	dev_dbg(rtsx_dev(chip), "SD_DATA_STATE: 0x%02x\n", val);
>>   
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
