Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80774B585B
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 01:03:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E00B8489F;
	Tue, 17 Sep 2019 23:03:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8nI-yGp41hz; Tue, 17 Sep 2019 23:03:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DD8F81B87;
	Tue, 17 Sep 2019 23:03:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7DD1C1BF2AE
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 23:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 778AF84ED7
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 23:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Q29U0Igh965 for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 23:02:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D563B84C99
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 23:02:54 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id b19so11693763iob.4
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 16:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=l3/R7eWJiNDCkUoIkkfFHiAvynxvR2Al0jggoujYqP8=;
 b=UqTPJVkMyjUH+pxJRXVO4wQN3AsWoP4RfA9zTsQF/p9MDmC59Ufcd6O1gCAb7ct6x2
 0iX+KOvDChxG8vRXizGwP4BTgUKsjkdecSKyKDhujWoqJNzcXxiAc5NR3gHNexqLHhbZ
 0i/3125w+y8RUTgDRGggPgVYaRzs/d4wjTcRAqwPxZy0kr/DTMGkQQnHS6O2Iu4IcdKy
 QpNcr1SaNAPTJWTdv9Or6Nl/3IxFFWAPbQfVqytEOLuKYoXW0GpROAs2OW52IkPCU2wd
 RBEhftc9hf4hfNmTuzBDaa+I6o+S3aVHyj37402st2JOEdJ6TkG3InAwc7nJ0PjbMF6i
 pRkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=l3/R7eWJiNDCkUoIkkfFHiAvynxvR2Al0jggoujYqP8=;
 b=qKoPCX2EOSQHsugFrRZClR/2oEFozjuFOlGaCIMYnmJ+LI3bj0R2T+utsNCLud9WyZ
 v146upBZd9ibO3cVGr6YWG4zi4yIW4Ss7VwARo9bPwpfVjGsvkCxWrBXjxlWZ7+YSgxB
 ZGAPdG/1lYfB3lqTg2BmjukhcBgeJMNxig7NKol9rS89uW2q5sT3ZA60QXjiyL92T7I8
 3gBpj0jKMFQIcHxIX8qQL7OfqGTc99bF7FJD9ZI95z/nwpUkLFjQn3ZaUD1zB7sqyKMQ
 IVlnpDME//kenPi0vpC2HYNbf2Wb3sYYYQtF1XkC7PrQ/+4zDZif6HRWU/it4tOo25eo
 zXGw==
X-Gm-Message-State: APjAAAUu1Xm0WhPXwN4wNl5UluFfXG4IAUl+O0i/6tpVlqfgTZFt2M1M
 AgdzJsvhDOLcEOq8YfhyzGM=
X-Google-Smtp-Source: APXvYqw+tu8JRqDVUBuD3e5WVpPKtugEIg2I+YqmmazkQMiBywQzLuGL8TvkfzYSxxfEYa2ncgGECw==
X-Received: by 2002:a6b:3c0a:: with SMTP id k10mr1688594iob.282.1568761374099; 
 Tue, 17 Sep 2019 16:02:54 -0700 (PDT)
Received: from cs-dulles.cs.umn.edu (cs-dulles.cs.umn.edu. [128.101.35.54])
 by smtp.googlemail.com with ESMTPSA id l19sm2570684iok.14.2019.09.17.16.02.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Sep 2019 16:02:53 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: 
Subject: [PATCH] media: staging: davinci: fix for memory leak
Date: Tue, 17 Sep 2019 18:02:38 -0500
Message-Id: <20190917230242.27630-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Irenge Jules Bashizi <jbi.octave@gmail.com>,
 linux-media@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kjlu@umn.edu, Ioannis Valasakis <code@wizofe.uk>,
 Mamta Shukla <mamtashukla555@gmail.com>, Michelle Darcy <mdarcy137@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>, emamd001@umn.edu,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, smccaman@umn.edu,
 Colin Ian King <colin.king@canonical.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In ipipe_g_config the allocated memory for params needs to be released
if either module_if->get or copy_to_user fails.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 52397ad0e3e2..3023691b53c0 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1316,10 +1316,13 @@ static int ipipe_g_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 
 		if (to && from && size) {
 			rval = module_if->get(ipipe, from);
-			if (rval)
+			if (rval) {
+				kfree(params);
 				goto error;
+			}
 			if (copy_to_user((void __user *)to, from, size)) {
 				rval = -EFAULT;
+				kfree(params);
 				break;
 			}
 		}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
