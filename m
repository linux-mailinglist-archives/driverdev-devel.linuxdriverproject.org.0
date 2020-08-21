Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A83DE24CB2D
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 05:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A08188615;
	Fri, 21 Aug 2020 03:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 69Yx3SZFWhTE; Fri, 21 Aug 2020 03:14:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD46488619;
	Fri, 21 Aug 2020 03:14:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C819B1BF9C2
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:14:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C493D88139
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1wOn7afQlud3 for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 03:14:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 23E9488126
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 03:14:18 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id m71so384902pfd.1
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 20:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/YxLwfqRT0LzVr6sU/PoWPx80Kd+H0Hr2LJri5kk/Pc=;
 b=FSf5Jpl9/IFj6kOf3jntWnnXmVi0fLzyoVNQd9Et5l837ZviEz5bE51u7MyzY6jN8t
 1g9QNe55Es1Nb1JFpV+rTReUp4PBLd/w1e4Ub0VahG7xJ+3rH20rvqP+0UXh/87EGoFO
 pL9rqZH508dmmnpYu4gIA3rrQ50GklgzWc9//pBTGS/krgazkAdC/0lb83YMtgVqQ1DB
 yubYb7m7vreAwvGmz3sBZwhPm2//3l7q5G3aB2LawHC+oVLKanL0o7S0sPo1KCEkTwav
 soByUFvv+zRuPOu7B0Wy1d2ItNz2SDssVb/rRDupRH1JyZXec7eTt3BvN3ni3zpq0kn6
 coxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/YxLwfqRT0LzVr6sU/PoWPx80Kd+H0Hr2LJri5kk/Pc=;
 b=MOcOn+4v5AcOrbxULum6m1d937sdoTDUFv3KqSJX1nThC0ytO6YhB1ZzfD+Fz2G/7d
 W7zx8ZEbFz1vCJkNMVClh4vAkFZsq8QxwzSlnfy3g6FfmZ7L/tM1knWa+gZ8two6Quja
 asRCLIekVHSe44iZyFaH6fnTyvdDy7U3sXMcyMRNqXy0QSWJWnWz5id7d3UPlmg4hDNc
 15Mhcb34miZ4svrfvFKlubIkJhFzGzXPLLgcvRU3tLNwZwlTWGMMaYH1MsKaYohYqPlS
 YDebFeedoWXvgwut1fkJq+3EyS95BJ+XyYEjTLHZUmKfzx8zL59Ig8x5okVBidwSVQU5
 9KiQ==
X-Gm-Message-State: AOAM531LIEZV+1XgowZ9UV0+Dj84uoMEUtewC1KdqT8Hx7835UXavKji
 Un4LG/W2/dK1n4ZJMuLIYBQ=
X-Google-Smtp-Source: ABdhPJz4sS4YBiY4YgsXDfQAOA6FAJKd3JDRxKn3w9h0Gc1psHawgfUEVTaUUsVEuEbrx9ShztbGLA==
X-Received: by 2002:a63:5a0f:: with SMTP id o15mr839105pgb.187.1597979657741; 
 Thu, 20 Aug 2020 20:14:17 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id np4sm376656pjb.4.2020.08.20.20.14.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Aug 2020 20:14:17 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 21 Aug 2020 11:14:04 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [RFC 3/3] staging: qlge: clean up code that dump info to dmesg
Message-ID: <20200821031404.mjlqgcvvz3htxoj2@Rk>
References: <20200814160601.901682-1-coiby.xu@gmail.com>
 <20200814160601.901682-4-coiby.xu@gmail.com>
 <20200816025717.GA28176@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200816025717.GA28176@f3>
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
Cc: Michal Kubecek <mkubecek@suse.cz>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 16, 2020 at 11:57:17AM +0900, Benjamin Poirier wrote:
>On 2020-08-15 00:06 +0800, Coiby Xu wrote:
>> The related code are not necessary because,
>> - Device status and general registers can be obtained by ethtool.
>> - Coredump can be done via devlink health reporter.
>> - Structure related to the hardware (struct ql_adapter) can be obtained
>>   by crash or drgn.
>
>I would suggest to add the drgn script from the cover letter to
>Documentation/networking/device_drivers/qlogic/

Thank you for this suggestion! I planned to send a pull request to
https://github.com/osandov/drgn. This is a better idea.
>
>I would also suggest to submit a separate patch now which fixes the
>build breakage reported in <20200629053004.GA6165@f3> while you work on
>removing that code.
>
I'll send a single patch to fix that issue before preparing for v1
of this work.

>>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/qlge/qlge.h         |  82 ----
>>  drivers/staging/qlge/qlge_dbg.c     | 672 ----------------------------
>>  drivers/staging/qlge/qlge_ethtool.c |   1 -
>>  drivers/staging/qlge/qlge_main.c    |   6 -
>>  4 files changed, 761 deletions(-)
>>
>[...]
>> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
>> index 058889687907..368394123d16 100644
>> --- a/drivers/staging/qlge/qlge_dbg.c
>> +++ b/drivers/staging/qlge/qlge_dbg.c
>> @@ -1326,675 +1326,3 @@ void ql_mpi_core_to_log(struct work_struct *work)
>>  		       sizeof(*qdev->mpi_coredump), false);
>>  }
>>
>> -#ifdef QL_REG_DUMP
>> -static void ql_dump_intr_states(struct ql_adapter *qdev)
>> -{
>[...]
>> -	}
>> -}
>> -#endif
>
>This leaves a stray newline at the end of the file and also does not
>apply over latest staging.

I will fix it in v1. Thank you for reviewing this patch!

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
