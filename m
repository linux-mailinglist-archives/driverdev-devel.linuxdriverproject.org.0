Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 159831824E5
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 23:30:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB8CA88A0D;
	Wed, 11 Mar 2020 22:30:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1rAh4TNSymHo; Wed, 11 Mar 2020 22:30:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 982348846E;
	Wed, 11 Mar 2020 22:30:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 876D51BF488
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 22:30:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8081486AE4
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 22:30:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q2lucGynvJys for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 22:30:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C154686A61
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 22:30:42 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id i13so2167637pfe.3
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 15:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=VxId/5R2+lzGKp4xsQtvfpVORMMHYVxgyqrgJySMYzY=;
 b=TbSHiffgBHgwXtx6lWGtUCIGwYo7aHUsh3UxIgr4iUYGZj78Lkbv3m0bjNFEsPt+/G
 0aomm2mocu8Rf+ku5opnW2fnZ/LiSJ3eE8sRt1RZNJlFdGa0RJnRWRxX8yulkaJjZb+4
 I0Wq7BvsQpJObzG9dYfRtLMo7agM/Z13SNVfjv0rAxaVjvwZcFME9jKgB5GqQ2GJUYQS
 +AH08f80G47e5pKa7h7HIxxP3t67tHVKGrTW6AnglzAQK62Spb6YJrGFNtHSCDxYzGdZ
 UK8EQIeIqZ0S6KqtKjYpU8EDkerh/V7WIOPN72DAbjdzhMimCQITvjoa3Yivn9ZwM03c
 smjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=VxId/5R2+lzGKp4xsQtvfpVORMMHYVxgyqrgJySMYzY=;
 b=Ydg1hRQh4zuVMrlkWcOewWQ7uMJjkA/ojX3zxV2LZMH5SO01LSyFhomFTFKRCguqok
 LDi22hAEHms0lXatCdK6UBMQp6z5OnRaU2OhAvXQAkH76ykb386Aj2u6gWwcNttkuSQm
 vV34KY7zjtS7+NhutXS6qP8YKT7HwaiZ55R4iQApIHw4AJk+ly5gXgsC21Dzw/PQdokD
 TSCPgU1HkkmmDW3V6VuP5lSMdC1sGDdEUv5lg0Wg5kRpFNCO9mvnb5+56TIxPcRNHfQv
 PJI42ZHsALfgfn0yvv1K1mu+2SSQPqgUti2rwOcWg0tKOdsw4JpyPRm35sDCzBuXorsH
 E1lw==
X-Gm-Message-State: ANhLgQ2N/Xleg4pgKPD7KHwGViV+RV7TyLvec7n0p2+Pv+ZjFlcMdtz5
 5T3fEXVxaBZSWNEfLUbegPQ=
X-Google-Smtp-Source: ADFU+vvUdUiZ/3I5RAU7v1jAZt0rsCbzS2PwzEvQdXDuFP/h0EjEUfZ4WMu3QLeSizzxjP2xBkZa8Q==
X-Received: by 2002:a62:f842:: with SMTP id c2mr5017437pfm.104.1583965842272; 
 Wed, 11 Mar 2020 15:30:42 -0700 (PDT)
Received: from [192.168.0.100] ([113.193.33.106])
 by smtp.gmail.com with ESMTPSA id v5sm1592244pff.209.2020.03.11.15.30.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Mar 2020 15:30:41 -0700 (PDT)
Date: Thu, 12 Mar 2020 04:00:40 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <20200311180428.6489fe9b@elisabeth>
References: <20200311131742.31068-1-shreeya.patel23498@gmail.com>
 <20200311180428.6489fe9b@elisabeth>
MIME-Version: 1.0
Subject: Re: [Outreachy kernel] [PATCH v4] Staging: rtl8188eu: rtw_mlme: Add
 space around operators
To: outreachy-kernel@googlegroups.com,Stefano Brivio <sbrivio@redhat.com>
From: Shreeya Patel <shreeya.patel23498@gmail.com>
Message-ID: <181B01E8-5D92-458F-9C5E-7271333B96F4@gmail.com>
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
 nramas@linux.microsoft.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On March 11, 2020 10:34:28 PM GMT+05:30, Stefano Brivio
 <sbrivio@redhat.com> wrote:

Hey Stefano,

>On Wed, 11 Mar 2020 18:47:42 +0530
>Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
>
>> Add space around operators for improving the code
>> readability.
>> Reported by checkpatch.pl
>> 
>> git diff -w shows no difference.
>> diff of the .o files before and after the changes shows no
>difference.
>> 
>> Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
>
>This looks good to me. Further clean-ups here could probably make this
>look less messy (there are long lines, unnecessary parentheses that are
>rather confusing, especially on that 4/5 factor, "magic" constants that
>might make sense to figure out the meaning of, etc.).
>

Thanks for reviewing. I will surely look at the other clean-ups as well :)

Thanks

>Reviewed-by: Stefano Brivio <sbrivio@redhat.com>

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
