Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E68F7D46B4
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 19:35:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D6D088157;
	Fri, 11 Oct 2019 17:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3wrzUdwpOS-x; Fri, 11 Oct 2019 17:35:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2BEA88146;
	Fri, 11 Oct 2019 17:35:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 971B01BF5E0
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 17:35:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B5FF20466
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 17:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKxqQQq45rIi for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 17:35:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by silver.osuosl.org (Postfix) with ESMTPS id 2CBCF20368
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 17:35:35 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id h4so12838411wrv.7
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 10:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ldn1+y4i+TM+l/Cu4HtEy/jFbE45xXljUNQey12ghIg=;
 b=Zs2H82o4DqF63IDhzoBFLmddb31FxW0PjesX4lLX87MmDlERw56C4+lJxly+SyMPAz
 PGUsRU6sE6/aU4CzGCBRoSNFQajdav8CSNoZTVGx5AYrigEUBYkmOvyFmZZ3dZYWTuIi
 m7sBJuLLlGhQ8krkYeGvATfvi96AbbAWdYtG0H6rMWVcnYlmCwCxYl3JsgOjtUB/7U9i
 QM0LQzc5Mzc325Muz9LJpZU3uzc4gQj6MjF+aEOPpjRb2VNk4usKnLUHfXvv6KszKc/C
 oWJffYE2VnWLeMrolSwwRUxqFPyTshE+RyhbjmishCoQOlSHVLYGstv2PA+cRy2oY9NF
 mbOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=ldn1+y4i+TM+l/Cu4HtEy/jFbE45xXljUNQey12ghIg=;
 b=BCLhdfQfZw1K45yG8PwabSfLUjd/7nap7lFVBO2dpjcHaxQ+vVYWCewk2GoM1wCacZ
 0jmyUU8xHi5+4zibxRV0Hv8pgzNDGIhpB2LHM/YKvupDgv2guEygQJ5xdfa42xZ9DQzR
 KsvbDdEU2nJ1Iz3DNZMmSWsqzceebrurQO+JI0uVBQot4Scwqxff7wCMpaBBsJPTitXg
 +F3sPF0e7l95lq5DXnZdgDBZKOFKsbWZaWKlxF0FggO196BRlrbq8DxNjuWIp2Mg0Hz8
 vE3WMYcXZrVFMJ6sqYmRRP5HGDcKC8/gwjjN5ZkvlW/Nd+CHyrExe8PqkboLxURL+sgb
 hiSA==
X-Gm-Message-State: APjAAAXXwNpNB5PlMf0/Eb41TMDLxQv6+VXGYGAn8Wn/HJxA/61OK40p
 6h+ExAj2fBwTLD1kmdFvjBs=
X-Google-Smtp-Source: APXvYqxL1v1bOAqXNayHLgr3O+yDOlR9ISOlJHTaBPGqrem9ZzTj7AtxPsmXFyS+6Pqw62fzU6mQNA==
X-Received: by 2002:a5d:43c2:: with SMTP id v2mr8911335wrr.153.1570815333323; 
 Fri, 11 Oct 2019 10:35:33 -0700 (PDT)
Received: from wambui ([197.237.61.225])
 by smtp.gmail.com with ESMTPSA id a18sm14506877wrs.27.2019.10.11.10.35.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 10:35:32 -0700 (PDT)
Date: Fri, 11 Oct 2019 20:35:27 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: isdn: remove assignment in if conditionals
Message-ID: <20191011173527.GA22796@wambui>
References: <20191011072044.7022-1-wambui.karugax@gmail.com>
 <20191011110019.GC4774@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011110019.GC4774@kadam>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Reply-To: 20191011110019.GC4774@kadam.osuosl.org
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 isdn@linux-pingi.de, linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 02:00:20PM +0300, Dan Carpenter wrote:
> This ISDN stuff is going to be deleted soon.  Just leave it as is.
> 
> regards,
> dan carpenter
> 
Noted, thanks

wambui karuga
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
