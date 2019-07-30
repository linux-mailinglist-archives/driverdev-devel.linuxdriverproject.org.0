Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 202B07A5EC
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jul 2019 12:24:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20722863BE;
	Tue, 30 Jul 2019 10:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8epdHcNcjjn; Tue, 30 Jul 2019 10:24:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 894468639B;
	Tue, 30 Jul 2019 10:24:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 401C81BF27F
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 10:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3C3D486373
 for <devel@linuxdriverproject.org>; Tue, 30 Jul 2019 10:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xA4PeLBp+b24 for <devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 10:24:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 268E18628A
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 10:24:47 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id f20so20598589pgj.0
 for <devel@driverdev.osuosl.org>; Tue, 30 Jul 2019 03:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PpkuFgEpyrfTUn2xO93gAkOHvkzw/VpUAN2pijyls6U=;
 b=i2D2zmIM4ny6wmoPxR2fSSipScSI/XAkAlZZjNtJiFjveqSDh7apLS0aLxVPcO7J7F
 ftCu4WiPU41LhKu3ChkWomPRlxIa0aHVFvIGF7MilnjQAMPPNAup7H+RKw2Gc/OHXP+6
 itoTx38nN8845TcXtwB1kd/cNQzwW0zkWzMDdYpsNXsSI+kyG7Es7mABVmiOEkbIFibA
 uGO1SWOsGb5HYI0LY04jiakQA6V4UiI3+vNnZX0qHBq5SNAm21s1Lq/EUahrcYb41InY
 cPgAJHeEnO8W9ZoEPB0r/+zvdKDqqrBxETuOkK6c9R1YDjfTxM9ZDr4tczITMpdiSPfL
 b+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PpkuFgEpyrfTUn2xO93gAkOHvkzw/VpUAN2pijyls6U=;
 b=rEnP5n+1psgHy7sTXbJr9m+KUwRkR7OecU9d8j6caZz8AKjwFB2DiZJsKw52TCyH4e
 NvNPxISR1MWtMVoarPw0D//8PAZITWZqDhle7IAZ/KWsh/keIIYb0BKw/ndg4b2W1bxe
 WbJg1ZvhtFLiKZ8d/MJpNc+h1gYBuSQvdv0f9i2mIi5W/t1zM8MPaJF+tBv1cTBYVASV
 2Zyc6ZtWPUnTob5NVN6nCptNo9C1AHcq10fvAXYCCo1ogvvRvQ71YISx4r636hcsRRw6
 Q/ZCMpByIqzkpSdaqSx+F/N1gtQUaLfNg59ZJPpcykAx8WX2i72EjRPD3bhAH5jdmvui
 GH8g==
X-Gm-Message-State: APjAAAVVFS+4Q9VyUlcuoFQlf/q2UFiPbgazIeba1XO9LG8DRYn3y/Ou
 2TlYuZVzXzE6wfW6p623RLM=
X-Google-Smtp-Source: APXvYqwA8gWk7GLzEOo/IlpB9GVuTNJbHsDBEkm5fOjRfwYQi/1Pa+NxWHVSXFOHqNHnEhwFE2YlXA==
X-Received: by 2002:a63:2cd1:: with SMTP id
 s200mr103839175pgs.10.1564482286634; 
 Tue, 30 Jul 2019 03:24:46 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.31])
 by smtp.gmail.com with ESMTPSA id p27sm98530002pfq.136.2019.07.30.03.24.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jul 2019 03:24:46 -0700 (PDT)
Date: Tue, 30 Jul 2019 15:54:39 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Linux-kernel-mentees][PATCH v4] staging: kpc2000: Convert
 put_page to put_user_page*()
Message-ID: <20190730102439.GA6825@bharath12345-Inspiron-5559>
References: <20190730092843.GA5150@bharath12345-Inspiron-5559>
 <20190730093606.GA15402@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730093606.GA15402@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: devel@driverdev.osuosl.org, John Hubbard <jhubbard@nvidia.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 30, 2019 at 11:36:06AM +0200, Greg KH wrote:
> On Tue, Jul 30, 2019 at 02:58:44PM +0530, Bharath Vedartham wrote:
> > put_page() to put_user_page*()
> 
> What does this mean?

That must have been a mistake! I just wanted to forward this patch to
the Linux-kernel-mentees mailing list. THis patch has already been taken
by for staging-testing. I ll forward another patch just cc'ing the
mentees mailing lists and won't disturb the other devs.

Thank you
Bharath
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
