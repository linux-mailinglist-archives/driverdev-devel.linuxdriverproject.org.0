Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED7624E6B4
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Aug 2020 11:34:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1C17887F8;
	Sat, 22 Aug 2020 09:34:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdsfetmD6Yu8; Sat, 22 Aug 2020 09:34:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 294FE8872A;
	Sat, 22 Aug 2020 09:34:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AE6E01BF5E0
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 09:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA38F87D5D
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 09:34:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EuisNkn9wdJh for <devel@linuxdriverproject.org>;
 Sat, 22 Aug 2020 09:34:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C661587CE4
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 09:34:27 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id a15so4022133wrh.10
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 02:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5asITRPbZ4NXMNWi/OhKvzA0M2sqXcJbRzcSLzCCfjk=;
 b=RF17qP3GY8mp7qU0/TPPiqpCST8KS4prrK/lnpCGl6+Tp3j5/bA5JgROyRABPnwXTd
 Oo+TbHkdQy83KrZ4Y7LqWegqk66PTOuh8jomsBsFJYJARM3zSbPsv8pnmk1m6XvkorpQ
 wEzTTFL0p8vUOXyuFUIrPZWe2FQ0WPz8hCNR7yZzE3UKUWXP0cLeDTyXuOc4xsf8TCMT
 vNGUQqlWeZl8Nwro6KJibKQt2GfoWZ6HRgMpOMNVoIScfot/maT3Wf4e7mIcl3RkJ5Ro
 84kSHTQMP3QkB+mPskMUlmhj3eyQ/0gYvPIeCnzxqfcB/2CQ8XyUbgvYXJw4omgbYRPn
 skKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5asITRPbZ4NXMNWi/OhKvzA0M2sqXcJbRzcSLzCCfjk=;
 b=N+IKc3YUvCDZJ0WB8YxkwLPGjmFSH+o7HTmmREPlBNPBzSxjcR/h3F9SxTzbWOYMl6
 EbZRED9+fRi5rHQWtecaARCTXWybM9ET0ctsH6w6H22YxDtYT5T/Ie+R4iMBoEBoVyNM
 4jFYSQ0cCJcnxW/ZqLd78pbK1xbIPLpG3yxSi+Ovq/TnUUmLQyFA+HcwAKTWUtx02Eiz
 yivhf9dJtS7ebRUHND2suNdoaFaN7HcakXb7FwGHeLkOzE+30it4Qx/X96bzmwXfS8gv
 hnU5nRrTIbnHum4krk2vHOYmVBAV3ZbGwkp7yLpFmm8HlHN+fDN0p1fJaQ0Ssn9R2EJS
 sotQ==
X-Gm-Message-State: AOAM532G/aJrwjJiMtaKVCNLJfWZNL8F3+1talpAFWwyMVn+ZSMT6a+q
 CJSlPF5BBZiLHHwNezp4ymg=
X-Google-Smtp-Source: ABdhPJxuFiH+UmReuhcyyAyGrbWmKlWBl59GiciDXztDjxRwUb3dqBB2To4CpBLSVy8/FdsKID2EOA==
X-Received: by 2002:a5d:6505:: with SMTP id x5mr6242528wru.336.1598088866260; 
 Sat, 22 Aug 2020 02:34:26 -0700 (PDT)
Received: from tsnow ([176.231.38.53])
 by smtp.gmail.com with ESMTPSA id j2sm9662473wrp.46.2020.08.22.02.34.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Aug 2020 02:34:25 -0700 (PDT)
Date: Sat, 22 Aug 2020 12:34:21 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v4 2/2] staging: android: Remove BUG from ion_system_heap.c
Message-ID: <20200822093421.GA6631@tsnow>
References: <cover.1598023523.git.tomersamara98@gmail.com>
 <a39407f84031eaeed5e65a7aab515a079edf5fcc.1598023524.git.tomersamara98@gmail.com>
 <3eba90dc-128f-49da-41a6-81494653d535@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3eba90dc-128f-49da-41a6-81494653d535@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Riley Andrews <riandrews@android.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 21, 2020 at 09:25:26AM -0700, Randy Dunlap wrote:
> On 8/21/20 8:28 AM, Tomer Samara wrote:
> > Remove BUG() from ion_sytem_heap.c
> > 
> > this fix the following checkpatch issue:
> > Avoid crashing the kernel - try using WARN_ON &
> > recovery code ratherthan BUG() or BUG_ON().
> > 
> > Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
> > ---
> >  drivers/staging/android/ion/ion_system_heap.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> > index eac0632ab4e8..00d6154aec34 100644
> > --- a/drivers/staging/android/ion/ion_system_heap.c
> > +++ b/drivers/staging/android/ion/ion_system_heap.c
> > @@ -30,7 +30,7 @@ static int order_to_index(unsigned int order)
> >  	for (i = 0; i < NUM_ORDERS; i++)
> >  		if (order == orders[i])
> >  			return i;
> > -	BUG();
> > +	/* This is impossible. */
> >  	return -1;
> >  }
> 
> Hi,
> Please explain why this is impossible.
> 
> If some caller calls order_to_index(5), it will return -1, yes?
> 
> -- 
> ~Randy
> 

As Dan Carpenter says here https://lkml.kernel.org/lkml/cover.1597865771.git.tomersamara98@gmail.com/T/#mc790b91029565b1bb0cb87997b39007d9edb6e04.
After looking at callers we see that order_to_index called from 2 functions:
- alloc_buffer_page called from alloc_largest_available which 
  loop over all legit order nubmers
  ( Flow:
   alloc_largest_available-->alloc_buffer_page-->order_to_index
  )

- free_buffer_page takes the order using compound_order, which return 0 or
  the order number for the page, this function has 2 callers too,
  ion_system_heap_allocate (which called it in case of failure at sg_alloc_table,
  thus calling from this flow will no casue error) and ion_system_heap_free
  (which will be called on every sg table in the buffer that allocated good,
  meaning from this flow also error will not be created).
  ( Flows:
   ion_system_heap_free     --> free_buffer_page --> order_to_index
   ion_system_heap_allocate --> free_buffer_page --> order_to_index
  )

Of course if some user will use this function with wrong order number he will be able to get this -1.
So should I remove this comment and resotre the error checks?
Btw, this is the same reason that I dropped the error check at ion_page_pool_shrink, so should I restore here also?

Thanks,
	Tomer Samara

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
