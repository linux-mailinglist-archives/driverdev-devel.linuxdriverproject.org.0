Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D352EC2FD
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 19:12:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EC0C86D21;
	Wed,  6 Jan 2021 18:12:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CqWNkWw2L4ge; Wed,  6 Jan 2021 18:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 398D786C5D;
	Wed,  6 Jan 2021 18:12:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E49C21BF847
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 18:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAB9D273FC
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 18:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aMP7Iqtk7gXK for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 18:12:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
 [209.85.218.51])
 by silver.osuosl.org (Postfix) with ESMTPS id C222720006
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 18:12:06 +0000 (UTC)
Received: by mail-ej1-f51.google.com with SMTP id jx16so6202453ejb.10
 for <devel@driverdev.osuosl.org>; Wed, 06 Jan 2021 10:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XQGxCTiFtkpwj/Esic/UMfZbUtBp4PBZp64OUURa+20=;
 b=RWIMZR9tYUK0zb+wnT+3jfcN8dX3wv8IPW/nmDWHNgNLq5fyLclGQHXonUkJJrFmJ4
 yW6LFyLvLiRe+8qILz1DJY1BeqZ7+oFcjltzgac8oqR6qBslzw7abQk/1jPS59lpZMlC
 PQM2sM8qK6Q57uFwKagAxhOhPbM3h/XVVk/Sl9QydU5T7v51FcMFXq/S/XOd9IPNxoba
 lyoVYDruY+zKEsd7bDCmZlDgRdK3A5BapEJWUT0E5VJXnjh72KJuC7+ybHNCCphbcpue
 d9JBsz3dPbjOHENhvkuqqEa4zO0TqepiwH7EuIVXh76uQCSOlKMIsn0AFnt5t8vTXW00
 /kRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XQGxCTiFtkpwj/Esic/UMfZbUtBp4PBZp64OUURa+20=;
 b=Im5Rk3LV9tMtqjpnz6RvhGZM16UoAo/pS9BMlUFquIhnVh/5MMmGR69XvMfdWEpEtw
 LBWDWJPr2uY/HDLq/yB//OboPVfAAt8lc8ZO4GK/FS9vQhxMqDVLk3XJN/SIHteU6N3p
 W4hGYOadY2qdz8HZ6uMSZDm3T+2E7KGk91yr3w52BK16RTlgNkJQGIxQvlysRjNNnoiE
 aAhQS1cZNG0TPhCo3gcnI9u2JCNZhjOBQ+nJjIkOLqXuWwB+/8O70n34ndryuZF3yUgc
 lx4hims2Zm+qv/wQeHmmKk3dwT4ilcNXO7+4a1yJAwRyVNM0sMQRNvjYiR6xWDKnMNnW
 bh9Q==
X-Gm-Message-State: AOAM533v48ZiIVcjMtLZbIXch5WyhuX2j7dAPSxaeqr1A2bi46aqXsqY
 Z/xK+dfCdYogRiF8sR0HcNnsk/nkbdPwULl/
X-Google-Smtp-Source: ABdhPJzfDzEBV+E55rXB3SibnGqFHhcQR7AGH+4qRC68WH9Yv2ib3eYaIjb+HWC07g8efOSBuHeCAw==
X-Received: by 2002:a17:906:440e:: with SMTP id
 x14mr3684191ejo.77.1609956725113; 
 Wed, 06 Jan 2021 10:12:05 -0800 (PST)
Received: from arch.laptop (84-238-151-182.ip.btc-net.bg. [84.238.151.182])
 by smtp.gmail.com with ESMTPSA id t26sm1592469eji.22.2021.01.06.10.12.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 10:12:04 -0800 (PST)
From: Filip Kolev <fil.kolev@gmail.com>
To: 
Subject: [PATCH] media: atomisp: ov2722: remove unnecessary debug print
Date: Wed,  6 Jan 2021 20:11:05 +0200
Message-Id: <20210106181158.2270-1-fil.kolev@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
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
Cc: Filip Kolev <fil.kolev@gmail.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

checkpatch.pl emits the following warning:

WARNING: Prefer using '"%s...", __func__' to using 'ov2722_remove', this function's name, in a string
+	dev_dbg(&client->dev, "ov2722_remove...\n");

This is just a "trace" call and therefore should be removed entirely;
ftrace should be used instead.

Signed-off-by: Filip Kolev <fil.kolev@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-ov2722.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
index eecefcd734d0e..1209492c1826a 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
@@ -1175,8 +1175,6 @@ static int ov2722_remove(struct i2c_client *client)
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct ov2722_device *dev = to_ov2722_sensor(sd);
 
-	dev_dbg(&client->dev, "ov2722_remove...\n");
-
 	dev->platform_data->csi_cfg(sd, 0);
 	v4l2_ctrl_handler_free(&dev->ctrl_handler);
 	v4l2_device_unregister_subdev(sd);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
