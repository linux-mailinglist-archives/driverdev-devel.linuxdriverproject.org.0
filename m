Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41ECBC877A
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 13:42:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C76EA22193;
	Wed,  2 Oct 2019 11:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6fRuwaFQdaq; Wed,  2 Oct 2019 11:42:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3BA052048A;
	Wed,  2 Oct 2019 11:42:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D421C1BF32B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 11:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D18D3878BB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 11:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A9tRhv4vlaxG
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 11:42:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7D31787634
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 11:42:20 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id s17so6953608plp.6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 02 Oct 2019 04:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+8+zKYnpppizP/mhZF7YgJf0/HsU+jXomcR7jJPfbJU=;
 b=h1nKRjg7KWtG9THBGmG4BwwnRg2f52vWViIPtwb5UDwnktmMfb+c3gYxKVodtrEuK7
 WpcZyjOf7jW7jSbB17LCYqR1eR9HtCUVcqb8gsw85LDq7YQ4Ri5adHnnxOiqzPAUk/h5
 QlIms2/fOgokJukr8mEQsAw8uTkW9IvxyIPuWXRdKCkED59FaQ+38ftZ7ulb6vTg4Z9z
 VQMpG983qNUDEu7xtcqkIEyatsuYyFZ73vrCm/01nJEr0HQLuuCZtp9iiLmfhzsGgucm
 vFeuOPzZA+vbW6dv1PWzWkA3N71Az8KzSc+924dmARjz49HkTLXDfsTmBT29Pf0Z7JkF
 whfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+8+zKYnpppizP/mhZF7YgJf0/HsU+jXomcR7jJPfbJU=;
 b=UrigWUDORgpNN52lALkzSxOlq5oKd7OpUulu+V2+YD48W/qs0cB7X5RuaKhf3AKbHY
 heXPXHanlE8tdy05nbQF89Cd1xjTFiGPTJifWnymsrtBM7QiV1+Tjfc4yKHQGb+7njOt
 LLRCGyr2htGHVc4Py2BZBNn4g35zB74Xcox3BuUacAgnGRu+6wI9EEOJB+mY3KoP2djb
 901cSV5EztLul7NEbTbKJ+HZrUgrSbEUDDHO5fenNKzEJqWbvSA10hBrqlJ7qJotdljo
 EYaeiOt+RQIxyoq4/JFSBMZP96nu4CQunTrHiU0AXUX7MAK+fYmEwtP/RwMsV6GmHEJi
 OGyA==
X-Gm-Message-State: APjAAAWAqb/6cMhY6lsJdL65WncjnUGLjVdWTBt7M2h5Q8/YgJpoXxps
 2yJWZdKdmqYfWvEt6bTwawA=
X-Google-Smtp-Source: APXvYqxOkGQ7OhXz0wfr8wkdMaetiZC8avSG0bhaoIvVkAYnvhDKscRL0aOgZxFo5AjjDkRvLs8YOA==
X-Received: by 2002:a17:902:a9cb:: with SMTP id
 b11mr3289660plr.122.1570016539749; 
 Wed, 02 Oct 2019 04:42:19 -0700 (PDT)
Received: from SARKAR ([1.186.12.91])
 by smtp.gmail.com with ESMTPSA id x11sm7399770pja.3.2019.10.02.04.42.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 04:42:18 -0700 (PDT)
Date: Wed, 2 Oct 2019 17:12:14 +0530
From: Rohit Sarkar <rohitsarkar5398@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20191002114214.GA5812@SARKAR>
References: <20190910184931.GA8228@SARKAR> <20191001084514.GJ27389@kadam>
 <20191001173926.GA11819@SARKAR> <20191001185852.GJ22609@kadam>
 <20191002043350.GB11819@SARKAR> <20191002105722.GL22609@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002105722.GL22609@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 florian.c.schilhabel@googlemail.com, larry.finger@lwfiner.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 01:57:22PM +0300, Dan Carpenter wrote:
> 
> We could leave it as is or change it to "MAX_WPA_IE_LEN - 1".  But I
> feel like the default should be to leave it as is unless there is a good
> reason.

Makes sense, although greg has already merged this. I guess I will
remove the redundant check then.

thanks,
rohit
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
