Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC46118362C
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 17:31:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 050608852E;
	Thu, 12 Mar 2020 16:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iGQOa6xi9fL2; Thu, 12 Mar 2020 16:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43983884FB;
	Thu, 12 Mar 2020 16:31:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 084B11BF2C3
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 16:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 00F4486CEF
 for <devel@linuxdriverproject.org>; Thu, 12 Mar 2020 16:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8a9GIszxC0sz for <devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 16:31:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77C8786CE5
 for <devel@driverdev.osuosl.org>; Thu, 12 Mar 2020 16:31:03 +0000 (UTC)
Received: from [10.137.112.111] (unknown [131.107.147.111])
 by linux.microsoft.com (Postfix) with ESMTPSA id D182A200767C;
 Thu, 12 Mar 2020 09:31:02 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com D182A200767C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1584030663;
 bh=OjaD6vj5jDRRnc88DeZb3dxL22aY2mB5SenuU5W0AH8=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=T1oKFagdtk0+yUEjGk+EeSbt0BRqrPF+TjppnSaSCIZq6gHmgNzQEknovZwS+2trS
 lrRXeniy/m7g0Asyv4MnTr5iv8afQj/mulQobN9l/AXEy3r5FpQ//mx0rYa/ihztaw
 i97tvY9P7a0sVVFitEeD4C8621QkgO9MUfYDRzsY=
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: rtw_mlme: Remove
 unnecessary conditions
To: Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>
References: <20200311135859.5626-1-shreeya.patel23498@gmail.com>
 <61a6c3d7-6592-b57b-6466-995309302cc2@linux.microsoft.com>
 <20200312113416.23d3db5c@elisabeth>
 <alpine.DEB.2.21.2003121145540.2418@hadrien>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <b5daea1c-8172-93b6-0956-b31c3798d373@linux.microsoft.com>
Date: Thu, 12 Mar 2020 09:31:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2003121145540.2418@hadrien>
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
Cc: devel@driverdev.osuosl.org, daniel.baluta@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 outreachy-kernel@googlegroups.com,
 Shreeya Patel <shreeya.patel23498@gmail.com>, Larry.Finger@lwfinger.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/12/2020 3:49 AM, Julia Lawall wrote:

Thanks for your input Julia and Stefano.

>> That's my general preference as well, but I can't find any point in the
>> "Describe your changes" section of submitting-patches.rst actually
>> defining the order. I wouldn't imply that from the sequence the steps
>> are presented in.
>>
>> In case it's possible to say everything with a single statement as
>> Shreeya did here, though, I guess that becomes rather a linguistic
>> factor, and I personally prefer the concise version here.
> 
> https://kernelnewbies.org/PatchPhilosophy suggests:
> 
> In patch descriptions and in the subject, it is common and preferable to
> use present-tense, imperative language. Write as if you are telling git
> what to do with your patch.

Use of imperative language is the approach I was thinking as well.

thanks,
  -lakshmi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
