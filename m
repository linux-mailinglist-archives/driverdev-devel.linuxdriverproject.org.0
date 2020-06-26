Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277C120B0B6
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 13:41:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 543F487D0E;
	Fri, 26 Jun 2020 11:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOKaCQKgO+pK; Fri, 26 Jun 2020 11:41:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9D3987E24;
	Fri, 26 Jun 2020 11:41:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B0A61BF36E
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 11:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 97BE3874E0
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 11:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cK1vxg93lVzs for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 11:41:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 01C5787D0E
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 11:41:12 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k1so4195138pls.2
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 04:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QP1W6LTqb3HrT7UeS27vyFiMv8Qdl9CewxQNnYMt6JQ=;
 b=bznUaDar0g9khomHuRgTnGoqDP76X5CaZIYsjxDjZw/+nxZeubAUWj+ak/AQex7eFH
 N0pCNrWEdMeLKjkg+Wa/oqdPycEJVFZpdmGdurIYc7H3kI6Ea/gqJWUhc/rYTQDGzbDA
 xR8n+CSvpn+LCEykMMU4T3eXQ7sdCpHvPXa+rlJ8vBi6iLXyZ9f4ltI02/KAIdcir+cu
 WDkMlz63kzFy0i+PR3TWNoiQu1KgfCnK/PG+R/lX1cRgwIC9mviETAhBUpDcGO03hU/k
 v5DT2FJ6a+DJf3XHWDkPju2Mbk48IkuW15kT17+WjnRoWBoShSNQavJ7PEfAc2u3HYnh
 o7wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QP1W6LTqb3HrT7UeS27vyFiMv8Qdl9CewxQNnYMt6JQ=;
 b=FtvdCu7yhFvfudvzDDOixOfWlsk3B4s6ZaKK+Vp0mLKcyom+NjTx0ZPtwrVzL+rElw
 3LuAr8M5/kvx5GEuPlgCZspY1boRBniDdcfDSDeoJI1YmAfVZZjAFY+3WzpTqfFHrP9J
 XpW7DYYMQaNtkacOskzS8VCjsNpJ1JO6mCpD9vE+EqUXhZtboVAtK7PkRYzdW3KgZYUP
 pk7+RaDDEZybgqXGb03dfJppy8poHZ0n2EyzeZv2BbKhIz4ZfhP9dNfGVBXJYkhzhskC
 tAXwWYK863pA+G+sk21k+iPhFxUCEYWb5kO+u7/UdujUuGzEZwYNVQeYkE1IGkwp+z9E
 AlmA==
X-Gm-Message-State: AOAM530xCgBRKCtd3MSeRLD9WPnEQYRbQiboRj/R5lshAOpT8yuZZzHO
 pISLYZ7ERmQzLolJshVfBrQ=
X-Google-Smtp-Source: ABdhPJz0eY6Y6F4elZnSER9ALuIHX/WgM2RzhCQHvumXJyVAiDZ+oZ8s0y0/QAtEEyT6e8dy8qlBHw==
X-Received: by 2002:a17:90a:de18:: with SMTP id
 m24mr3158430pjv.49.1593171672566; 
 Fri, 26 Jun 2020 04:41:12 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id 4sm22490829pgk.68.2020.06.26.04.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Jun 2020 04:41:12 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 26 Jun 2020 19:41:04 +0800
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH 2/2] staging: qlge: fix else after return or break
Message-ID: <20200626114104.pst7b2yplsblmw6k@Rk>
References: <20200625215755.70329-1-coiby.xu@gmail.com>
 <20200625215755.70329-3-coiby.xu@gmail.com>
 <20200626083436.GG2549@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200626083436.GG2549@kadam>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 26, 2020 at 11:34:36AM +0300, Dan Carpenter wrote:
>On Fri, Jun 26, 2020 at 05:57:55AM +0800, Coiby Xu wrote:
>> @@ -1404,11 +1403,10 @@ static void ql_dump_cam_entries(struct ql_adapter *qdev)
>>  			pr_err("%s: Failed read of mac index register\n",
>>  			       __func__);
>>  			return;
>                        ^^^^^^
>> -		} else {
>> -			if (value[0])
>> -				pr_err("%s: MCAST index %d CAM Lookup Lower = 0x%.08x:%.08x\n",
>> -				       qdev->ndev->name, i, value[1], value[0]);
>>  		}
>> +		if (value[0])
>> +			pr_err("%s: MCAST index %d CAM Lookup Lower = 0x%.08x:%.08x\n",
>> +			       qdev->ndev->name, i, value[1], value[0]);
>>  	}
>>  	ql_sem_unlock(qdev, SEM_MAC_ADDR_MASK);
>        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>  }
>> @@ -1427,11 +1425,10 @@ void ql_dump_routing_entries(struct ql_adapter *qdev)
>>  			pr_err("%s: Failed read of routing index register\n",
>>  			       __func__);
>>  			return;
>                        ^^^^^^
>
>
>> -		} else {
>> -			if (value)
>> -				pr_err("%s: Routing Mask %d = 0x%.08x\n",
>> -				       qdev->ndev->name, i, value);
>>  		}
>> +		if (value)
>> +			pr_err("%s: Routing Mask %d = 0x%.08x\n",
>> +			       qdev->ndev->name, i, value);
>>  	}
>>  	ql_sem_unlock(qdev, SEM_RT_IDX_MASK);
>        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>  }
>
>This is not caused by your patch, but in these two functions we return
>without dropping the lock.  There may be other places as well, but these
>are the two I can see without leaving my email client.
>
>Do you think you could fix that before we forget?  Just change the
>return to a break to fix the bug.

Sure, I'll address this issue in the next series
of patches. Thank you for bringing up this issue!

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
