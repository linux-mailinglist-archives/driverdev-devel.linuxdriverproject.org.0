Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A69826EBE7
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 23:05:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E5BCA86C3A;
	Fri, 19 Jul 2019 21:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7aCWylPbLpLH; Fri, 19 Jul 2019 21:05:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 69FC786C2C;
	Fri, 19 Jul 2019 21:05:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B89D1BF292
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 21:05:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 68B0887635
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 21:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MeKUBNCFGBnO for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 21:05:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from hqemgate14.nvidia.com (hqemgate14.nvidia.com [216.228.121.143])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6BAF58761F
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 21:05:25 +0000 (UTC)
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d3230950000>; Fri, 19 Jul 2019 14:05:25 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 19 Jul 2019 14:05:24 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 19 Jul 2019 14:05:24 -0700
Received: from [10.110.48.28] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 19 Jul
 2019 21:05:24 +0000
Subject: Re: [PATCH v3] staging: kpc2000: Convert put_page to put_user_page*()
To: Matt Sickler <Matt.Sickler@daktronics.com>, Bharath Vedartham
 <linux.bhar@gmail.com>, "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "jglisse@redhat.com" <jglisse@redhat.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
References: <20190719200235.GA16122@bharath12345-Inspiron-5559>
 <SN6PR02MB4016754FE1BB6200746281A2EECB0@SN6PR02MB4016.namprd02.prod.outlook.com>
From: John Hubbard <jhubbard@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <3948879c-5764-4245-e950-eb4749aafe5b@nvidia.com>
Date: Fri, 19 Jul 2019 14:05:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <SN6PR02MB4016754FE1BB6200746281A2EECB0@SN6PR02MB4016.namprd02.prod.outlook.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1563570325; bh=uXXZ8OaRelUTVBhhS709HcwBaF4jbMLR5EBDQ41vffw=;
 h=X-PGP-Universal:Subject:To:CC:References:From:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=RBMHQkFTRPQgCd7gP4P+7u6BJdhh2b31ep8178Yi5S3jKNIPqrnwL2KL1601Z+iuQ
 9V44LCZdjYVWOPr8mb/RBqFqi+lWyoa4VLjFHCODAHQmfqss6YPvwRWYQ24WU7q3lW
 JEhvpFzEci71ms+nbfMOZqVZJIL7B2u3yJJhe+lnLiFchga6FTAWxwHtKCj2i1af+G
 tWD9LYiUxhJnZ6l0hzXLh3TFsed9xgGzTVtHb8LdrvqemTRFs0fukUMZ0VogQapToK
 fOZyAxJ+lOP22NjLrdU81USY8v73UiGyZDvqTYlE+oi5v9TNpmoafHVddNgLIgfFML
 fmlLIcQLM3yuQ==
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
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 7/19/19 1:59 PM, Matt Sickler wrote:
>> From: Bharath Vedartham <linux.bhar@gmail.com>
>> Changes since v2
>>        - Added back PageResevered check as suggested by John Hubbard.
>>
>> The PageReserved check needs a closer look and is not worth messing
>> around with for now.
>>
>> Matt, Could you give any suggestions for testing this patch?
> 
> Myself or someone else from Daktronics would have to do the testing since the
> hardware isn't really commercially available.  I've been toying with the idea
> of asking for a volunteer from the mailing list to help me out with this - I'd
> send them some hardware and they'd do all the development and testing. :)
> I still have to run that idea by Management though.
> 
>> If in-case, you are willing to pick this up to test. Could you
>> apply this patch to this tree and test it with your devices?
> 
> I've been meaning to get to testing the changes to the drivers since upstreaming
> them, but I've been swamped with other development.  I'm keeping an eye on the
> mailing lists, so I'm at least aware of what is coming down the pipe.
> I'm not too worried about this specific change, even though I don't really know
> if the reserved check and the dirtying are even necessary.
> It sounded like John's suggestion was to not do the PageReserved() check and just
> use put_user_pges_dirty() all the time.  John, is that incorrect?
> 

That's what I suggested at first. But then I saw at least one other place where 
this pattern is being used, and it shook my confidence. I don't clearly see what
the PageReserved check is protecting against here, but it's better to be
safe, and do things in two steps: step 1 is *only* convert from put_page()
to put_user_page(), and step 2 is to maybe remove the PageReserved() check,
once fully understood. 


thanks,
-- 
John Hubbard
NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
