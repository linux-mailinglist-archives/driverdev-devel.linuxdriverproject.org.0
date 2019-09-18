Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECC1B5D47
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 08:33:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2F5E857A2;
	Wed, 18 Sep 2019 06:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBVDerLqG1kY; Wed, 18 Sep 2019 06:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC793847B8;
	Wed, 18 Sep 2019 06:33:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E7C71BF5F6
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 06:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5B99B20336
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 06:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0ue-DFZBd-iL for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 06:33:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id D0E7B20117
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 06:33:09 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n9so3412260pgc.1
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 23:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4NRHniZPjEfTKvj18POaDeXjVS6m4zvsqMwOtmFk3z0=;
 b=r3C+u3/BB++MIH+IsmGmDFs2M0PdO8Pau3WSslLy1WJtLJ3S7piwCY3PHTNxaBHfF0
 4ms7Nh5DunKVrPLSEg5PphOgFpwy7xXtIAwixb738v0lzn0t2u/6COg2bvxa8azBVXWs
 QYIkYpT1OVRIZOvfysvnbaCeri03UJY8KotnUrAAfySUN86jCxk243As4uNuVzbR60eo
 x+GFT1forrnz6r38ro+RZtuK6NXLnNos8WcySSUJV+yJSub2Cmv6+VJSg7KG0yeMnj7V
 JJb/We+Px/j7j8JPH+3lqnYZtxz6QdupO4RzerpyBEpznnp39WLjQv6Wu/4mOBnitfD1
 NK0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4NRHniZPjEfTKvj18POaDeXjVS6m4zvsqMwOtmFk3z0=;
 b=TuXkcA3NdubR4bpt4+Y1w/kTbbdJ/tAYyzMxF58alGfu152DUkocS0Dt/OcE6w5o4m
 19d896RcXNtX/9QUYbDp3VmVqbTFhIEaidxefHKYlGmkqp3hOEprnlJyEDYodyHid0OM
 S2XW3XLyBFBFD8PpX5kzCtEsBY74p7bqvyERC0pWFNYPAHT5NkT6uwwfK2+u+ySmDS7l
 +7VY3IFTWpeIrcbH/Gtq9aCfU+tBYyW2wuobMnVvPkLERGC6LxoyjSQmtbCuqR8DgyFg
 0sNhim1EodqLW+JLOAwLKX98IjAL6ARhcg3HHZOVGBJpUAuBUMBezSlfDzc7y4AyMSB4
 p6vg==
X-Gm-Message-State: APjAAAW7sHd2B6gmkWB8jzAj4/FXMO+YVpJEKs7S7ttYzW8KqvBlqH7t
 NGpAAbiTr7NOuMzUY86ehAs=
X-Google-Smtp-Source: APXvYqxbYV70nhx6LQt0f1LP4Q/8C+7DUVaCoQwC8bHmHjNOPx3Cn+Y7wUTauxXkxk/8TXzoWnjcVQ==
X-Received: by 2002:aa7:93b7:: with SMTP id x23mr2433584pff.250.1568788389488; 
 Tue, 17 Sep 2019 23:33:09 -0700 (PDT)
Received: from localhost ([175.223.34.14])
 by smtp.gmail.com with ESMTPSA id r185sm6685309pfr.68.2019.09.17.23.33.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 23:33:08 -0700 (PDT)
Date: Wed, 18 Sep 2019 15:33:04 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: 'Greg KH' <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Message-ID: <20190918063304.GA8354@jagdpanzerIV>
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
 <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
 <20190918061605.GA1832786@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918061605.GA1832786@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 'Valdis Kletnieks' <valdis.kletnieks@vt.edu>, sergey.senozhatsky@gmail.com,
 Namjae Jeon <namjae.jeon@samsung.com>, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, 'Ju Hyung Park' <qkrwngud825@gmail.com>,
 linux-fsdevel@vger.kernel.org, sj1557.seo@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On (09/18/19 08:16), 'Greg KH' wrote:
[..]
> > Note, that Samsung is still improving sdfat driver. For instance,
> > what will be realeased soon is sdfat v2.3.0, which will include support
> > for "UtcOffset" of "File Directory Entry", in order to satisfy
> > exFAT specification 7.4.
>
[..]
> If Samsung wishes to use their sdfat codebase as the "seed" to work from
> for this, please submit a patch adding the latest version to the kernel
> tree and we can compare and work from there.

Isn't it what Ju Hyung did? He took sdfat codebase (the most recent
among publicly available) as the seed, cleaned it up a bit and submitted
as a patch. Well, technically, Valdis did the same, it's just he forked
a slightly more outdated (and not anymore used by Samsung) codebase.

	-ss
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
